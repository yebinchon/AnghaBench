
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* Finish ) (int *) ;int (* Finalize ) (int ,int ) ;int (* Sum ) (int ,int,scalar_t__) ;int (* Initialize ) (int ,int *) ;} ;
typedef int PVOID ;
typedef TYPE_1__* PKERB_CHECKSUM ;
typedef int * PBYTE ;
typedef int LPVOID ;
typedef scalar_t__ LPCVOID ;
typedef int LPCBYTE ;
typedef int HCRYPTPROV ;
typedef int HCRYPTHASH ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;
typedef int ALG_ID ;


 int CALG_CRC32 ;
 int CDLocateCheckSum (int ,TYPE_1__**) ;
 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 scalar_t__ CryptCreateHash (int ,int ,int ,int ,int *) ;
 int CryptDestroyHash (int ) ;
 scalar_t__ CryptGetHashParam (int ,int ,int *,int*,int ) ;
 scalar_t__ CryptHashData (int ,int ,int,int ) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ FALSE ;
 int HP_HASHVAL ;
 int KERB_CHECKSUM_REAL_CRC32 ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PROV_RSA_AES ;
 int RtlCopyMemory (int ,int *,int ) ;
 int min (int,int) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int,scalar_t__) ;
 int stub3 (int ,int ) ;
 int stub4 (int *) ;

BOOL kull_m_crypto_hash(ALG_ID algid, LPCVOID data, DWORD dataLen, LPVOID hash, DWORD hashWanted)
{
 BOOL status = FALSE;
 HCRYPTPROV hProv;
 HCRYPTHASH hHash;
 DWORD hashLen;
 PBYTE buffer;
 PKERB_CHECKSUM pCheckSum;
 PVOID Context;

 if(algid == CALG_CRC32)
 {
  if((hashWanted == sizeof(DWORD)) && NT_SUCCESS(CDLocateCheckSum(KERB_CHECKSUM_REAL_CRC32, &pCheckSum)))
  {
   if(NT_SUCCESS(pCheckSum->Initialize(0, &Context)))
   {
    pCheckSum->Sum(Context, dataLen, data);
    status = NT_SUCCESS(pCheckSum->Finalize(Context, hash));
    pCheckSum->Finish(&Context);
   }
  }
 }
 else if(CryptAcquireContext(&hProv, ((void*)0), ((void*)0), PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
 {
  if(CryptCreateHash(hProv, algid, 0, 0, &hHash))
  {
   if(CryptHashData(hHash, (LPCBYTE) data, dataLen, 0))
   {
    if(CryptGetHashParam(hHash, HP_HASHVAL, ((void*)0), &hashLen, 0))
    {
     if(buffer = (PBYTE) LocalAlloc(LPTR, hashLen))
     {
      status = CryptGetHashParam(hHash, HP_HASHVAL, buffer, &hashLen, 0);
      RtlCopyMemory(hash, buffer, min(hashLen, hashWanted));
      LocalFree(buffer);
     }
    }
   }
   CryptDestroyHash(hHash);
  }
  CryptReleaseContext(hProv, 0);
 }
 return status;
}
