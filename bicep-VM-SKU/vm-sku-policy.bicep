
//params
param vmSKUs array
param vmSKUDefinition string
//vars
var vmSKUName = 'Allowed virtual machine size SKUs'

//deploy policy assignments
  
resource vmAllowed 'Microsoft.Authorization/policyAssignments@2022-06-01' = {
    name: 'vm-allowed'
    properties: {
                displayName: vmSKUName
                policyDefinitionId: vmSKUDefinition
                parameters: {
                            listOfAllowedSKUs: {
                            value: vmSKUs
                            }
                }
    }
}
