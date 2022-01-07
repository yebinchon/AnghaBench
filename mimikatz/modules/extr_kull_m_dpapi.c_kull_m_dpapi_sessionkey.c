
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBYTE ;
typedef int LPVOID ;
typedef int * LPCVOID ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef scalar_t__ ALG_ID ;


 scalar_t__ CALG_SHA1 ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int) ;
 int RtlCopyMemory (int,int *,int) ;
 int SHA_DIGEST_LENGTH ;
 scalar_t__ kull_m_crypto_hash (scalar_t__,int *,int,int *,int) ;
 int kull_m_crypto_hmac (scalar_t__,int *,int,int,int,int ,int) ;
 int kull_m_dpapi_hmac_sha1_incorrect (int *,int,int *,int,int *,int,int *,int,int ) ;

BOOL kull_m_dpapi_sessionkey(LPCVOID masterkey, DWORD masterkeyLen, LPCVOID salt, DWORD saltLen, LPCVOID entropy, DWORD entropyLen, LPCVOID data, DWORD dataLen, ALG_ID hashAlg, LPVOID outKey, DWORD outKeyLen)
{
 BOOL status = FALSE;
 LPCVOID pKey = ((void*)0);
 BYTE dgstMasterKey[SHA_DIGEST_LENGTH];
 PBYTE tmp;
 if(masterkeyLen == SHA_DIGEST_LENGTH)
  pKey = masterkey;
 else if(kull_m_crypto_hash(CALG_SHA1, masterkey, masterkeyLen, dgstMasterKey, SHA_DIGEST_LENGTH))
  pKey = dgstMasterKey;

 if(pKey)
 {
  if((hashAlg == CALG_SHA1) && (entropy || data))
   status = kull_m_dpapi_hmac_sha1_incorrect(masterkey, masterkeyLen, salt, saltLen, entropy, entropyLen, data, dataLen, outKey);
  else if(tmp = (PBYTE) LocalAlloc(LPTR, saltLen + entropyLen + dataLen))
  {
   RtlCopyMemory(tmp, salt, saltLen);
   if(entropy && entropyLen)
    RtlCopyMemory(tmp + saltLen, entropy, entropyLen);
   if(data && dataLen)
    RtlCopyMemory(tmp + saltLen + entropyLen, data, dataLen);
   status = kull_m_crypto_hmac(hashAlg, pKey, SHA_DIGEST_LENGTH, tmp, saltLen + entropyLen + dataLen, outKey, outKeyLen);
   LocalFree(tmp);
  }
 }
 return status;
}
