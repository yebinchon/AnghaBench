
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCRYPTPROV ;
typedef int HCRYPTHASH ;
typedef int DWORD ;
typedef int ALG_ID ;


 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 scalar_t__ CryptCreateHash (int ,int ,int ,int ,int *) ;
 int CryptDestroyHash (int ) ;
 int CryptGetHashParam (int ,int ,int *,int *,int ) ;
 int CryptReleaseContext (int ,int ) ;
 int HP_HASHVAL ;
 int PROV_RSA_AES ;

DWORD kull_m_crypto_hash_len(ALG_ID hashId)
{
 DWORD len = 0;
 HCRYPTPROV hProv;
 HCRYPTHASH hHash;
 if(CryptAcquireContext(&hProv, ((void*)0), ((void*)0), PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
 {
  if(CryptCreateHash(hProv, hashId, 0, 0, &hHash))
  {
   CryptGetHashParam(hHash, HP_HASHVAL, ((void*)0), &len, 0);
   CryptDestroyHash(hHash);
  }
  CryptReleaseContext(hProv, 0);
 }
 return len;
}
