
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PSTR ;
typedef int * LPBYTE ;
typedef int HCRYPTPROV ;
typedef int DWORD ;
typedef int BOOL ;


 int CRYPT_DELETEKEYSET ;
 int CryptAcquireContextA (int *,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ CryptGetProvParam (int ,int ,int *,int*,int ) ;
 int CryptReleaseContext (int ,int ) ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (scalar_t__) ;
 int PP_CONTAINER ;
 int PP_NAME ;
 int PP_PROVTYPE ;
 int PRINT_ERROR_AUTO (char*) ;

BOOL kull_m_crypto_close_hprov_delete_container(HCRYPTPROV hProv)
{
 BOOL status = FALSE;
 DWORD provtype, szLen = 0;
 PSTR container, provider;
 if(CryptGetProvParam(hProv, PP_CONTAINER, ((void*)0), &szLen, 0))
 {
  if(container = (PSTR) LocalAlloc(LPTR, szLen))
  {
   if(CryptGetProvParam(hProv, PP_CONTAINER, (LPBYTE) container, &szLen, 0))
   {
    if(CryptGetProvParam(hProv, PP_NAME, ((void*)0), &szLen, 0))
    {
     if(provider = (PSTR) LocalAlloc(LPTR, szLen))
     {
      if(CryptGetProvParam(hProv, PP_NAME, (LPBYTE) provider, &szLen, 0))
      {
       szLen = sizeof(DWORD);
       if(CryptGetProvParam(hProv, PP_PROVTYPE, (LPBYTE) &provtype, &szLen, 0))
       {
        CryptReleaseContext(hProv, 0);
        status = CryptAcquireContextA(&hProv, container, provider, provtype, CRYPT_DELETEKEYSET);
       }
      }
      LocalFree(provider);
     }
    }
    LocalFree(container);
   }
  }
 }
 if(!status)
  PRINT_ERROR_AUTO(L"CryptGetProvParam/CryptAcquireContextA");
 return status;
}
