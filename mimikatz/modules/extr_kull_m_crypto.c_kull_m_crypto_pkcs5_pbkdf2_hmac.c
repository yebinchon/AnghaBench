
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PDWORD ;
typedef int * PBYTE ;
typedef int * LPCVOID ;
typedef int HCRYPTPROV ;
typedef int HCRYPTHASH ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 scalar_t__ CryptCreateHash (int ,scalar_t__,int ,int ,int *) ;
 int CryptDestroyHash (int ) ;
 scalar_t__ CryptGetHashParam (int ,int ,int *,scalar_t__*,int ) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ FALSE ;
 int HP_HASHVAL ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int LocalFree (int *) ;
 int PROV_RSA_AES ;
 int RtlCopyMemory (int *,int *,scalar_t__) ;
 scalar_t__ TRUE ;
 int _byteswap_ulong (scalar_t__) ;
 int kull_m_crypto_hmac (scalar_t__,int *,scalar_t__,int *,scalar_t__,int *,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

BOOL kull_m_crypto_pkcs5_pbkdf2_hmac(DWORD calgid, LPCVOID password, DWORD passwordLen, LPCVOID salt, DWORD saltLen, DWORD iterations, BYTE *key, DWORD keyLen, BOOL isDpapiInternal)
{
 BOOL status = FALSE;
 HCRYPTPROV hProv;
 HCRYPTHASH hHash;
 DWORD sizeHmac, count, i, j, r;
 PBYTE asalt, obuf, d1;

 if(CryptAcquireContext(&hProv, ((void*)0), ((void*)0), PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
 {
  if(CryptCreateHash(hProv, calgid, 0, 0, &hHash))
  {
   if(CryptGetHashParam(hHash, HP_HASHVAL, ((void*)0), &sizeHmac, 0))
   {
    if(asalt = (PBYTE) LocalAlloc(LPTR, saltLen + sizeof(DWORD)))
    {
     if(obuf = (PBYTE) LocalAlloc(LPTR, sizeHmac))
     {
      if(d1 = (PBYTE) LocalAlloc(LPTR, sizeHmac))
      {
       status = TRUE;
       RtlCopyMemory(asalt, salt, saltLen);
       for (count = 1; keyLen > 0; count++)
       {
        *(PDWORD) (asalt + saltLen) = _byteswap_ulong(count);
        kull_m_crypto_hmac(calgid, password, passwordLen, asalt, saltLen + 4, d1, sizeHmac);
        RtlCopyMemory(obuf, d1, sizeHmac);
        for (i = 1; i < iterations; i++)
        {
         kull_m_crypto_hmac(calgid, password, passwordLen, d1, sizeHmac, d1, sizeHmac);
         for (j = 0; j < sizeHmac; j++)
          obuf[j] ^= d1[j];
         if(isDpapiInternal)
          RtlCopyMemory(d1, obuf, sizeHmac);
        }
        r = min(keyLen, sizeHmac);
        RtlCopyMemory(key, obuf, r);
        key += r;
        keyLen -= r;
       }
       LocalFree(d1);
      }
      LocalFree(obuf);
     }
     LocalFree(asalt);
    }
   }
   CryptDestroyHash(hHash);
  }
  CryptReleaseContext(hProv, 0);
 }
 return status;
}
