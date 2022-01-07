
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef char* LPCWSTR ;
typedef int HCRYPTPROV ;
typedef scalar_t__ HCRYPTKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int AT_KEYEXCHANGE ;
 int AT_SIGNATURE ;
 int CRYPT_FIRST ;
 int CRYPT_NEXT ;
 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,char*,char*,int,int) ;
 int CryptDestroyKey (scalar_t__) ;
 scalar_t__ CryptGetProvParam (int ,int ,int *,int*,int) ;
 int CryptGetUserKey (int ,int,scalar_t__*) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ GetLastError () ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (char*) ;
 int PP_ENUMCONTAINERS ;
 int PP_UNIQUE_CONTAINER ;
 int PRINT_ERROR_AUTO (char*) ;
 int RtlCopyMemory (char*,char*,int) ;
 int kprintf (char*,...) ;
 int kuhl_m_crypto_exportKeyToFile (int ,scalar_t__,int,char*,int,char*) ;
 int kuhl_m_crypto_printKeyInfos (int ,scalar_t__) ;
 int kull_m_crypto_keytype_to_str (int) ;
 char* kull_m_string_qad_ansi_to_unicode (char*) ;
 scalar_t__ wcslen (char*) ;

void kuhl_m_crypto_l_keys_capi(LPCWSTR szContainer, LPCWSTR szProvider, DWORD dwProvType, DWORD dwFlags, BOOL export, LPCWSTR szStore)
{
 HCRYPTPROV hCryptProv, hCryptKeyProv;
 HCRYPTKEY hCapiKey;
 DWORD i, dwSizeNeeded, dwUniqueSizeNeeded, ks, CRYPT_first_next = CRYPT_FIRST, dwContainer = szContainer ? (DWORD) wcslen(szContainer) : 0, dwSubContainer;
 BOOL success;
 char *aContainerName, *aUniqueName;
 wchar_t *containerName, *fullContainer;

 if(CryptAcquireContext(&hCryptProv, szContainer, szProvider, dwProvType, CRYPT_VERIFYCONTEXT | dwFlags))
 {
  success = CryptGetProvParam(hCryptProv, PP_ENUMCONTAINERS, ((void*)0), &dwSizeNeeded, CRYPT_first_next);
  if(aContainerName = (char *) LocalAlloc(LPTR, dwSizeNeeded))
  {
   i = 0;
   while(success)
   {
    if(success = (CryptGetProvParam(hCryptProv, PP_ENUMCONTAINERS, (BYTE *) aContainerName, &dwSizeNeeded, CRYPT_first_next)))
    {
     if(containerName = kull_m_string_qad_ansi_to_unicode(aContainerName))
     {
      kprintf(L"    %u. %s\n", i, containerName);
      dwSubContainer = (DWORD) wcslen(containerName);

      if(fullContainer = (wchar_t *) LocalAlloc(LPTR, (dwContainer + dwSubContainer + 1) * sizeof(wchar_t)))
      {
       if(dwContainer)
        RtlCopyMemory(fullContainer, szContainer, dwContainer * sizeof(wchar_t));
       RtlCopyMemory(fullContainer + dwContainer, containerName, dwSubContainer * sizeof(wchar_t));

       if(CryptAcquireContext(&hCryptKeyProv, fullContainer, szProvider, dwProvType, dwFlags))
       {
        if(CryptGetProvParam(hCryptKeyProv, PP_UNIQUE_CONTAINER, ((void*)0), &dwUniqueSizeNeeded, 0))
        {
         if(aUniqueName = (char *) LocalAlloc(LPTR, dwUniqueSizeNeeded))
         {
          if(CryptGetProvParam(hCryptKeyProv, PP_UNIQUE_CONTAINER, (BYTE *) aUniqueName, &dwUniqueSizeNeeded, 0))
           kprintf(L"    %S\n", aUniqueName);
          LocalFree(aUniqueName);
         }
        }

        for(ks = AT_KEYEXCHANGE, hCapiKey = 0; (ks <= AT_SIGNATURE) && !CryptGetUserKey(hCryptKeyProv, ks, &hCapiKey); ks++);
        if(hCapiKey)
        {
         kprintf(L"\tType           : %s (0x%08x)\n", kull_m_crypto_keytype_to_str(ks), ks);
         kuhl_m_crypto_printKeyInfos(0, hCapiKey);
         if(export)
          kuhl_m_crypto_exportKeyToFile(0, hCapiKey, ks, szStore, i, containerName);
         CryptDestroyKey(hCapiKey);
        }
        else PRINT_ERROR_AUTO(L"CryptGetUserKey");
       }
       LocalFree(fullContainer);
      }
      kprintf(L"\n");
      LocalFree(containerName);
     }
    }
    CRYPT_first_next = CRYPT_NEXT;
    i++;
   }
   if(GetLastError() != ERROR_NO_MORE_ITEMS)
    PRINT_ERROR_AUTO(L"CryptGetProvParam");

   CryptReleaseContext(hCryptProv, 0);
   LocalFree(aContainerName);
  }
 }
 else PRINT_ERROR_AUTO(L"CryptAcquireContext");
}
