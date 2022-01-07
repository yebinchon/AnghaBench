
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_4; int * member_3; int member_2; int * member_1; int member_0; } ;
typedef int * PBYTE ;
typedef int LPVOID ;
typedef scalar_t__ LPCVOID ;
typedef int LPCBYTE ;
typedef TYPE_1__ HMAC_INFO ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int HCRYPTHASH ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CALG_HMAC ;
 int CALG_RC2 ;
 int CRYPT_IPSEC_HMAC_KEY ;
 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 scalar_t__ CryptCreateHash (int ,int ,int ,int ,int *) ;
 int CryptDestroyHash (int ) ;
 int CryptDestroyKey (int ) ;
 scalar_t__ CryptGetHashParam (int ,int ,int *,int *,int ) ;
 scalar_t__ CryptHashData (int ,int ,int ,int ) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ CryptSetHashParam (int ,int ,int ,int ) ;
 scalar_t__ FALSE ;
 int HP_HASHVAL ;
 int HP_HMAC_INFO ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 int LocalFree (int *) ;
 int PROV_RSA_AES ;
 int RtlCopyMemory (int ,int *,int ) ;
 scalar_t__ kull_m_crypto_hkey (int ,int ,scalar_t__,int ,int ,int *,int *) ;
 int min (int ,int ) ;

BOOL kull_m_crypto_hmac(DWORD calgid, LPCVOID key, DWORD keyLen, LPCVOID message, DWORD messageLen, LPVOID hash, DWORD hashWanted)
{
 BOOL status = FALSE;
 DWORD hashLen;
 HCRYPTPROV hProv;
 HCRYPTKEY hKey;
 HCRYPTHASH hHash;
 HMAC_INFO HmacInfo = {calgid, ((void*)0), 0, ((void*)0), 0};
 PBYTE buffer;

 if(CryptAcquireContext(&hProv, ((void*)0), ((void*)0), PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
 {
  if(kull_m_crypto_hkey(hProv, CALG_RC2, key, keyLen, CRYPT_IPSEC_HMAC_KEY, &hKey, ((void*)0)))
  {
   if(CryptCreateHash(hProv, CALG_HMAC, hKey, 0, &hHash))
   {
    if(CryptSetHashParam(hHash, HP_HMAC_INFO, (LPCBYTE) &HmacInfo, 0))
     if(CryptHashData(hHash, (LPCBYTE) message, messageLen, 0))
      if(CryptGetHashParam(hHash, HP_HASHVAL, ((void*)0), &hashLen, 0))
      {
       if(buffer = (PBYTE) LocalAlloc(LPTR, hashLen))
       {
        status = CryptGetHashParam(hHash, HP_HASHVAL, buffer, &hashLen, 0);
        RtlCopyMemory(hash, buffer, min(hashLen, hashWanted));
        LocalFree(buffer);
       }
      }
      CryptDestroyHash(hHash);
   }
   CryptDestroyKey(hKey);
  }
  CryptReleaseContext(hProv, 0);
 }
 return status;
}
