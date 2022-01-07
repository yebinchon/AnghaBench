
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opad ;
typedef int ipad ;
typedef int * PBYTE ;
typedef int * LPVOID ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef int ALG_ID ;


 int FALSE ;
 int RtlCopyMemory (int *,int *,scalar_t__) ;
 int RtlFillMemory (int *,int,char) ;
 int kull_m_crypto_hash (int ,int *,int,int *,scalar_t__) ;
 scalar_t__ min (scalar_t__,int) ;

BOOL kull_m_crypto_DeriveKeyRaw(ALG_ID hashId, LPVOID hash, DWORD hashLen, LPVOID key, DWORD keyLen)
{
 BOOL status = FALSE;
 BYTE buffer[152], ipad[64], opad[64];
 DWORD i;

 if(status = (hashLen >= keyLen))
  RtlCopyMemory(key, hash, keyLen);
 else
 {
  RtlFillMemory(ipad, sizeof(ipad), '6');
  RtlFillMemory(opad, sizeof(opad), '\\');
  for(i = 0; i < hashLen; i++)
  {
   ipad[i] ^= ((PBYTE) hash)[i];
   opad[i] ^= ((PBYTE) hash)[i];
  }
  if(kull_m_crypto_hash(hashId, ipad, sizeof(ipad), buffer, hashLen))
   if(status = kull_m_crypto_hash(hashId, opad, sizeof(opad), buffer + hashLen, hashLen))
    RtlCopyMemory(key, buffer, min(keyLen, 2 * hashLen));
 }
 return status;
}
