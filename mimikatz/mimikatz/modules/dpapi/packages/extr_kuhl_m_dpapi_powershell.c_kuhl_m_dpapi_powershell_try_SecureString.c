
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int LPVOID ;
typedef int LPBYTE ;
typedef int IXMLDOMNode ;
typedef int DWORD ;
typedef int BSTR ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ IXMLDOMNode_get_nodeName (int *,int *) ;
 scalar_t__ IXMLDOMNode_get_text (int *,int *) ;
 int LocalFree (int ) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int _wcsicmp (int ,char*) ;
 int kprintf (char*,int,...) ;
 scalar_t__ kuhl_m_dpapi_unprotect_raw_or_blob (int ,int,int *,int,int **,int *,int ,int *,int*,int *) ;
 int kull_m_dpapi_blob_quick_descr (int ,int ) ;
 scalar_t__ kull_m_string_stringToHexBuffer (int ,int *,int*) ;

void kuhl_m_dpapi_powershell_try_SecureString(IXMLDOMNode *pObj, int argc, wchar_t * argv[])
{
 BOOL isSecureString = FALSE;
 BSTR bstrGeneric;
 LPBYTE data;
 LPVOID pDataOut;
 DWORD szData, dwDataOutLen;

 if(IXMLDOMNode_get_nodeName(pObj, &bstrGeneric) == S_OK)
 {
  isSecureString = !_wcsicmp(bstrGeneric, L"SS");
  SysFreeString(bstrGeneric);
  if(IXMLDOMNode_get_text(pObj, &bstrGeneric) == S_OK)
  {
   if(isSecureString)
   {
    if(kull_m_string_stringToHexBuffer(bstrGeneric, &data, &szData))
    {
     kull_m_dpapi_blob_quick_descr(0, data);
     if(kuhl_m_dpapi_unprotect_raw_or_blob(data, szData, ((void*)0), argc, argv, ((void*)0), 0, &pDataOut, &dwDataOutLen, ((void*)0)))
     {
      kprintf(L">> cleartext: %.*s\n", dwDataOutLen / sizeof(wchar_t), pDataOut);
      LocalFree(pDataOut);
     }
     LocalFree(data);
    }
   }
   else kprintf(L"%s\n", bstrGeneric);
   SysFreeString(bstrGeneric);
  }
 }
}
