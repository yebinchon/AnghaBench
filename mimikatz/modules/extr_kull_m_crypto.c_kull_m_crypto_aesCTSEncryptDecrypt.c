
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PVOID ;
typedef int PBYTE ;
typedef int LPCBYTE ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CRYPT_MODE_CBC ;
 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 int CryptDestroyKey (int ) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ CryptSetKeyParam (int ,int ,int ,int ) ;
 scalar_t__ FALSE ;
 int KP_MODE ;
 int PROV_RSA_AES ;
 scalar_t__ kull_m_crypto_aesCTSDecrypt (int ,int ,int ,int ) ;
 scalar_t__ kull_m_crypto_aesCTSEncrypt (int ,int ,int ,int ) ;
 scalar_t__ kull_m_crypto_hkey (int ,int ,scalar_t__,int ,int ,int *,int *) ;

BOOL kull_m_crypto_aesCTSEncryptDecrypt(DWORD aesCalgId, PVOID data, DWORD szData, PVOID key, DWORD szKey, PVOID pbIV, BOOL encrypt)
{
 BOOL status = FALSE;
 HCRYPTPROV hProv;
 HCRYPTKEY hKey;
 DWORD mode = CRYPT_MODE_CBC;

 if(CryptAcquireContext(&hProv, ((void*)0), ((void*)0), PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
 {
  if(kull_m_crypto_hkey(hProv, aesCalgId, key, szKey, 0, &hKey, ((void*)0)))
  {
   if(CryptSetKeyParam(hKey, KP_MODE, (LPCBYTE) &mode, 0))
    status = (encrypt ? kull_m_crypto_aesCTSEncrypt(hKey, (PBYTE) data, szData, (PBYTE) pbIV) : kull_m_crypto_aesCTSDecrypt(hKey, (PBYTE) data, szData, (PBYTE) pbIV));
   CryptDestroyKey(hKey);
  }
  CryptReleaseContext(hProv, 0);
 }
 return status;
}
