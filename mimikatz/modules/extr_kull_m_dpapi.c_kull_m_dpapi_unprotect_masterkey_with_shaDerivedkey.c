
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ algHash; scalar_t__ algCrypt; int __dwKeyLen; int pbKey; int rounds; int salt; } ;
typedef int PVOID ;
typedef TYPE_1__* PKULL_M_DPAPI_MASTERKEY ;
typedef int PBYTE ;
typedef int LPCVOID ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BOOL ;
typedef scalar_t__ ALG_ID ;


 scalar_t__ CALG_3DES ;
 scalar_t__ CALG_HMAC ;
 scalar_t__ CALG_SHA1 ;
 scalar_t__ CryptDecrypt (int ,int ,int ,int ,int,int*) ;
 int CryptDestroyKey (int ) ;
 scalar_t__ CryptSetKeyParam (int ,int ,int,int ) ;
 int FALSE ;
 int KP_IV ;
 int LPTR ;
 int LocalAlloc (int ,int) ;
 int LocalFree (int) ;
 int PRINT_ERROR_AUTO (char*) ;
 int RtlCopyMemory (int,int,int) ;
 int RtlEqualMemory (int,int,int) ;
 int TRUE ;
 int kull_m_crypto_cipher_blocklen (scalar_t__) ;
 int kull_m_crypto_cipher_keylen (scalar_t__) ;
 int kull_m_crypto_close_hprov_delete_container (int ) ;
 int kull_m_crypto_hash_len (scalar_t__) ;
 scalar_t__ kull_m_crypto_hkey_session (scalar_t__,int,int,int ,int *,int *) ;
 scalar_t__ kull_m_crypto_hmac (scalar_t__,int,int,int,int,int,int) ;
 scalar_t__ kull_m_crypto_pkcs5_pbkdf2_hmac (scalar_t__,int,int,int ,int,int ,int,int,int ) ;

BOOL kull_m_dpapi_unprotect_masterkey_with_shaDerivedkey(PKULL_M_DPAPI_MASTERKEY masterkey, LPCVOID shaDerivedkey, DWORD shaDerivedkeyLen, PVOID *output, DWORD *outputLen)
{
 BOOL status = FALSE;
 HCRYPTPROV hSessionProv;
 HCRYPTKEY hSessionKey;
 ALG_ID HMACAlg;
 DWORD HMACLen, BlockLen, KeyLen, OutLen;
 PVOID HMACHash, CryptBuffer, hmac1, hmac2;

 HMACAlg = (masterkey->algHash == CALG_HMAC) ? CALG_SHA1 : masterkey->algHash;
 HMACLen = kull_m_crypto_hash_len(HMACAlg);
 KeyLen = kull_m_crypto_cipher_keylen(masterkey->algCrypt);
 BlockLen = kull_m_crypto_cipher_blocklen(masterkey->algCrypt);

 if(HMACHash = LocalAlloc(LPTR, KeyLen + BlockLen))
 {
  if(kull_m_crypto_pkcs5_pbkdf2_hmac(HMACAlg, shaDerivedkey, shaDerivedkeyLen, masterkey->salt, sizeof(masterkey->salt), masterkey->rounds, (PBYTE) HMACHash, KeyLen + BlockLen, TRUE))
  {
   if(kull_m_crypto_hkey_session(masterkey->algCrypt, HMACHash, KeyLen, 0, &hSessionKey, &hSessionProv))
   {
    if(CryptSetKeyParam(hSessionKey, KP_IV, (PBYTE) HMACHash + KeyLen, 0))
    {
     OutLen = masterkey->__dwKeyLen;
     if(CryptBuffer = LocalAlloc(LPTR, OutLen))
     {
      RtlCopyMemory(CryptBuffer, masterkey->pbKey, OutLen);
      if(CryptDecrypt(hSessionKey, 0, FALSE, 0, (PBYTE) CryptBuffer, &OutLen))
      {
       *outputLen = OutLen - 16 - HMACLen - ((masterkey->algCrypt == CALG_3DES) ? 4 : 0);
       if(hmac1 = LocalAlloc(LPTR, HMACLen))
       {
        if(kull_m_crypto_hmac(HMACAlg, shaDerivedkey, shaDerivedkeyLen, CryptBuffer, 16, hmac1, HMACLen))
        {
         if(hmac2 = LocalAlloc(LPTR, HMACLen))
         {
          if(kull_m_crypto_hmac(HMACAlg, hmac1, HMACLen, (PBYTE) CryptBuffer + OutLen - *outputLen, *outputLen, hmac2, HMACLen))
          {
           if(status = RtlEqualMemory(hmac2, (PBYTE) CryptBuffer + 16, HMACLen))
           {
            if(*output = LocalAlloc(LPTR, *outputLen))
             RtlCopyMemory(*output, (PBYTE) CryptBuffer + OutLen - *outputLen, *outputLen);
           }
          }
          LocalFree(hmac2);
         }
        }
        LocalFree(hmac1);
       }
      }
      LocalFree(CryptBuffer);
     }
    }
    CryptDestroyKey(hSessionKey);
    if(!kull_m_crypto_close_hprov_delete_container(hSessionProv))
     PRINT_ERROR_AUTO(L"kull_m_crypto_close_hprov_delete_container");
   }
   else PRINT_ERROR_AUTO(L"kull_m_crypto_hkey_session");
  }
  LocalFree(HMACHash);
 }
 return status;
}
