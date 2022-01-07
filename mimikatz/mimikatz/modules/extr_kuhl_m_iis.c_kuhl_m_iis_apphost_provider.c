
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PWSTR ;
typedef int PBYTE ;
typedef char* LPCWSTR ;
typedef int LPCBYTE ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMDocument ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LocalFree (int ) ;
 int PRINT_ERROR (char*,int ) ;
 scalar_t__ _wcsicmp (int ,char*) ;
 int kprintf (char*,int ) ;
 int kuhl_m_iis_apphost_provider_decrypt (int,int **,int ,int,int ,int ,int ,int ) ;
 scalar_t__ kull_m_string_quick_base64_to_Binary (int ,int *,int *) ;
 int kull_m_xml_getAttribute (int *,char*) ;

BOOL kuhl_m_iis_apphost_provider(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, IXMLDOMNode *pNode, LPCWSTR provider, LPCBYTE data, DWORD szData)
{
 BOOL status = FALSE, isMachine = FALSE;
 PWSTR name, type, keyContainerName, useMachineContainer, sessionKey;
 PBYTE binaryData;
 DWORD binaryDataLen;

 if(name = kull_m_xml_getAttribute(pNode, L"name"))
 {
  if(status = _wcsicmp(name, provider) == 0)
  {
   if(type = kull_m_xml_getAttribute(pNode, L"type"))
   {
    if(_wcsicmp(type, L"Microsoft.ApplicationHost.AesProtectedConfigurationProvider") == 0)
    {
     if(keyContainerName = kull_m_xml_getAttribute(pNode, L"keyContainerName"))
     {
      kprintf(L"  | KeyName   : %s\n", keyContainerName);
      if(sessionKey = kull_m_xml_getAttribute(pNode, L"sessionKey"))
      {

       if(useMachineContainer = kull_m_xml_getAttribute(pNode, L"useMachineContainer"))
       {
        isMachine = (_wcsicmp(useMachineContainer, L"true") == 0);
        LocalFree(useMachineContainer);
       }
       if(kull_m_string_quick_base64_to_Binary(sessionKey, &binaryData, &binaryDataLen))
       {
        kuhl_m_iis_apphost_provider_decrypt(argc, argv, keyContainerName, isMachine, binaryData, binaryDataLen, data, szData);
        LocalFree(binaryData);
       }
       LocalFree(sessionKey);
      }
      LocalFree(keyContainerName);
     }
    }
    else
    {
     PRINT_ERROR(L"type is not supported (%s)\n", type);
    }
    LocalFree(type);
   }
   else
   {

   }
  }
  LocalFree(name);
 }
 return status;
}
