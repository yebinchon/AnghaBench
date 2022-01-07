
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t PWCHAR ;
typedef size_t PCWSTR ;
typedef size_t PCWCHAR ;
typedef size_t PBYTE ;
typedef int IXMLDOMDocument ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int IISXMLType_Providers ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,size_t) ;
 int LocalFree (size_t) ;
 int RtlCopyMemory (size_t,size_t,size_t) ;
 scalar_t__ _wcsnicmp (size_t,char*,int) ;
 int kprintf (char*,size_t,size_t) ;
 int kuhl_m_iis_apphost_genericEnumNodes (int,int **,int *,char*,int ,size_t,size_t,int ) ;
 scalar_t__ kull_m_string_quick_base64_to_Binary (size_t,size_t*,int *) ;
 size_t wcschr (size_t,int) ;
 size_t wcslen (size_t) ;

void kuhl_m_iis_maybeEncrypted(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, PCWSTR password)
{
 BOOL status = FALSE;
 size_t passwordLen = wcslen(password), providerLen, dataLen;
 PCWCHAR pBeginProvider, pEndProvider, pBeginData, pEndData;
 PWCHAR provider, data;
 PBYTE binaryData;
 DWORD binaryDataLen;

 if(passwordLen > 10)
 {
  if((_wcsnicmp(password, L"[enc:", 5) == 0) && (_wcsnicmp(password + (passwordLen - 5), L":enc]", 5) == 0))
  {
   pBeginProvider = password + 5;
   pEndProvider = wcschr(password + 5, L':');
   providerLen = (PBYTE) pEndProvider - (PBYTE) pBeginProvider;
   if(pEndProvider != (password + (passwordLen - 5)))
   {
    pBeginData = pEndProvider + 1;
    pEndData = password + (passwordLen - 5);
    dataLen = (PBYTE) pEndData - (PBYTE) pBeginData;
    if(provider = (PWCHAR) LocalAlloc(LPTR, providerLen + sizeof(wchar_t)))
    {
     RtlCopyMemory(provider, pBeginProvider, providerLen);
     if(data = (PWCHAR) LocalAlloc(LPTR, dataLen + sizeof(wchar_t)))
     {
      RtlCopyMemory(data, pBeginData, dataLen);
      kprintf(L"  | Provider  : %s\n  | Data      : %s\n", provider, data);

      if(kull_m_string_quick_base64_to_Binary(data, &binaryData, &binaryDataLen))
      {



       kuhl_m_iis_apphost_genericEnumNodes(argc, argv, pXMLDom, L"//configuration/configProtectedData/providers/add", IISXMLType_Providers, provider, binaryData, binaryDataLen);
       LocalFree(binaryData);
      }
      LocalFree(data);
     }
     LocalFree(provider);
    }
   }
  }
 }
}
