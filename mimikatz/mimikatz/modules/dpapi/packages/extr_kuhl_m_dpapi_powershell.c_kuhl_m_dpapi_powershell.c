
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PCWSTR ;
typedef int NTSTATUS ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMDocument ;
typedef int BSTR ;


 scalar_t__ IXMLDOMDocument_selectSingleNode (int *,int ,int **) ;
 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 scalar_t__ S_OK ;
 scalar_t__ kuhl_m_dpapi_powershell_check_against_one_type (int *,char*) ;
 int kuhl_m_dpapi_powershell_credential (int *,int,int **) ;
 int kuhl_m_dpapi_powershell_try_SecureString (int *,int,int **) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 int * kull_m_xml_CreateAndInitDOM () ;
 scalar_t__ kull_m_xml_LoadXMLFile (int *,int ) ;
 int kull_m_xml_ReleaseDom (int *) ;

NTSTATUS kuhl_m_dpapi_powershell(int argc, wchar_t * argv[])
{
 PCWSTR filename;
 IXMLDOMDocument *pXMLDom;
 IXMLDOMNode *pNode;

 if(kull_m_string_args_byName(argc, argv, L"in", &filename, ((void*)0)))
 {
  if(pXMLDom = kull_m_xml_CreateAndInitDOM())
  {
   if(kull_m_xml_LoadXMLFile(pXMLDom, filename))
   {
    if((IXMLDOMDocument_selectSingleNode(pXMLDom, (BSTR) L"//Objs/Obj", &pNode) == S_OK) && pNode)
    {
     if(kuhl_m_dpapi_powershell_check_against_one_type(pNode, L"System.Management.Automation.PSCredential") || kuhl_m_dpapi_powershell_check_against_one_type(pNode, L"System.Security.SecureString"))
      kuhl_m_dpapi_powershell_credential(pNode, argc, argv);
     else PRINT_ERROR(L"XML doesn't seem to be a PSCredential/SecureString\n");
    }
    else if((IXMLDOMDocument_selectSingleNode(pXMLDom, (BSTR) L"//Objs/SS", &pNode) == S_OK) && pNode)
     kuhl_m_dpapi_powershell_try_SecureString(pNode, argc, argv);
    else PRINT_ERROR(L"XML doesn't seem to be a SecureString\n");
   }
   kull_m_xml_ReleaseDom(pXMLDom);
  }
 }
 else PRINT_ERROR(L"Missing /in:credentials.xml\n");
 return STATUS_SUCCESS;
}
