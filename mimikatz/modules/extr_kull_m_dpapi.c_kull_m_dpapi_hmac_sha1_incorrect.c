
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opad ;
typedef int ipad ;
typedef int * PBYTE ;
typedef int * LPVOID ;
typedef int * LPCVOID ;
typedef size_t DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CALG_SHA1 ;
 scalar_t__ FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int RtlCopyMemory (int *,int *,size_t) ;
 int RtlFillMemory (int *,int,char) ;
 int SHA_DIGEST_LENGTH ;
 scalar_t__ kull_m_crypto_hash (int ,int *,int,int *,int) ;

BOOL kull_m_dpapi_hmac_sha1_incorrect(LPCVOID key, DWORD keyLen, LPCVOID salt, DWORD saltLen, LPCVOID entropy, DWORD entropyLen, LPCVOID data, DWORD dataLen, LPVOID outKey)
{
 BOOL status = FALSE;
 BYTE ipad[64], opad[64], hash[SHA_DIGEST_LENGTH], *bufferI, *bufferO;
 DWORD i;

 RtlFillMemory(ipad, sizeof(ipad), '6');
 RtlFillMemory(opad, sizeof(opad), '\\');
 for(i = 0; i < keyLen; i++)
 {
  ipad[i] ^= ((PBYTE) key)[i];
  opad[i] ^= ((PBYTE) key)[i];
 }
 if(bufferI = (PBYTE) LocalAlloc(LPTR, sizeof(ipad) + saltLen))
 {
  RtlCopyMemory(bufferI, ipad, sizeof(ipad));
  RtlCopyMemory(bufferI + sizeof(ipad), salt, saltLen);
  if(kull_m_crypto_hash(CALG_SHA1, bufferI, sizeof(ipad) + saltLen, hash, SHA_DIGEST_LENGTH))
  {
   if(bufferO = (PBYTE) LocalAlloc(LPTR, sizeof(opad) + SHA_DIGEST_LENGTH + entropyLen + dataLen))
   {
    RtlCopyMemory(bufferO, opad, sizeof(opad));
    RtlCopyMemory(bufferO + sizeof(opad), hash, SHA_DIGEST_LENGTH);
    if(entropy && entropyLen)
     RtlCopyMemory(bufferO + sizeof(opad) + SHA_DIGEST_LENGTH, entropy, entropyLen);
    if(data && dataLen)
     RtlCopyMemory(bufferO + sizeof(opad) + SHA_DIGEST_LENGTH + entropyLen, data, dataLen);

    status = kull_m_crypto_hash(CALG_SHA1, bufferO, sizeof(opad) + SHA_DIGEST_LENGTH + entropyLen + dataLen, outKey, SHA_DIGEST_LENGTH);
    LocalFree(bufferO);
   }
  }
  LocalFree(bufferI);
 }
 return status;
}
