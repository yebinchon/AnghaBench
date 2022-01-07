
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBYTE ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int ALG_ID ;


 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 int CryptDestroyKey (int ) ;
 scalar_t__ CryptGenKey (int ,int ,int ,int *) ;
 int CryptGetKeyParam (int ,int ,int ,int*,int ) ;
 int CryptReleaseContext (int ,int ) ;
 int KP_KEYLEN ;
 int PROV_RSA_AES ;

DWORD kull_m_crypto_cipher_keylen(ALG_ID hashId)
{
 DWORD len = 0, dwSize = sizeof(DWORD);
 HCRYPTPROV hProv;
 HCRYPTKEY hKey;
 if(CryptAcquireContext(&hProv, ((void*)0), ((void*)0), PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
 {
  if(CryptGenKey(hProv, hashId, 0, &hKey))
  {
   CryptGetKeyParam(hKey, KP_KEYLEN, (PBYTE) &len, &dwSize, 0);
   CryptDestroyKey(hKey);
  }
  CryptReleaseContext(hProv, 0);
 }
 return len / 8;
}
