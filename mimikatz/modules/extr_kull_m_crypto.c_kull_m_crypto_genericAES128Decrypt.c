
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBYTE ;
typedef scalar_t__ LPVOID ;
typedef scalar_t__ LPCVOID ;
typedef int LPCBYTE ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CALG_AES_128 ;
 scalar_t__ CRYPT_MODE_CBC ;
 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 int CryptDecrypt (int ,int ,int ,int ,int ,scalar_t__*) ;
 int CryptDestroyKey (int ) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ CryptSetKeyParam (int ,int ,int ,int ) ;
 int FALSE ;
 int KP_IV ;
 int KP_MODE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 scalar_t__ LocalFree (scalar_t__) ;
 int PRINT_ERROR_AUTO (char*) ;
 int PROV_RSA_AES ;
 int RtlCopyMemory (scalar_t__,scalar_t__,scalar_t__) ;
 int TRUE ;
 scalar_t__ kull_m_crypto_hkey (int ,int ,scalar_t__,int,int ,int *,int *) ;

BOOL kull_m_crypto_genericAES128Decrypt(LPCVOID pKey, LPCVOID pIV, LPCVOID pData, DWORD dwDataLen, LPVOID *pOut, DWORD *dwOutLen)
{
 BOOL status = FALSE;
 HCRYPTPROV hProv;
 HCRYPTKEY hKey;
 DWORD mode = CRYPT_MODE_CBC;

 if(CryptAcquireContext(&hProv, ((void*)0), ((void*)0), PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
 {
  if(kull_m_crypto_hkey(hProv, CALG_AES_128, pKey, 16, 0, &hKey, ((void*)0)))
  {
   if(CryptSetKeyParam(hKey, KP_MODE, (LPCBYTE) &mode, 0))
   {
    if(CryptSetKeyParam(hKey, KP_IV, (LPCBYTE) pIV, 0))
    {
     if(*pOut = LocalAlloc(LPTR, dwDataLen))
     {
      *dwOutLen = dwDataLen;
      RtlCopyMemory(*pOut, pData, dwDataLen);
      if(!(status = CryptDecrypt(hKey, 0, TRUE, 0, (PBYTE) *pOut, dwOutLen)))
      {
       PRINT_ERROR_AUTO(L"CryptDecrypt");
       *pOut = LocalFree(*pOut);
       *dwOutLen = 0;
      }
     }
    }
    else PRINT_ERROR_AUTO(L"CryptSetKeyParam (IV)");
   }
   else PRINT_ERROR_AUTO(L"CryptSetKeyParam (MODE)");
   CryptDestroyKey(hKey);
  }
  else PRINT_ERROR_AUTO(L"kull_m_crypto_hkey");
  CryptReleaseContext(hProv, 0);
 }
 else PRINT_ERROR_AUTO(L"CryptAcquireContext");
 return status;
}
