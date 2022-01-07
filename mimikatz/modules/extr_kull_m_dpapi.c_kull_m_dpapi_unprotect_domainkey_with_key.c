
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int dwSecretLen; int pbSecret; int dwAccesscheckLen; int pbAccesscheck; } ;
struct TYPE_17__ {int buffer; int cbMasterKey; scalar_t__ dataLen; scalar_t__ data; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PSID ;
typedef TYPE_3__* PKULL_M_DPAPI_MASTERKEY_DOMAINKEY ;
typedef TYPE_1__* PKULL_M_DPAPI_DOMAIN_RSA_MASTER_KEY ;
typedef TYPE_1__* PKULL_M_DPAPI_DOMAIN_ACCESS_CHECK ;
typedef int PBYTE ;
typedef scalar_t__ LPCVOID ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CALG_3DES ;
 int CALG_SHA1 ;
 int CRYPT_VERIFYCONTEXT ;
 int CopySid (int,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 scalar_t__ CryptDecrypt (int ,int ,int ,int ,int,int*) ;
 int CryptDestroyKey (int ) ;
 scalar_t__ CryptImportKey (int ,int,int,int ,int ,int *) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ CryptSetKeyParam (int ,int ,int,int ) ;
 int FALSE ;
 int GetLengthSid (TYPE_1__*) ;
 int KP_IV ;
 int LPTR ;
 TYPE_1__* LocalAlloc (int ,int) ;
 TYPE_1__* LocalFree (TYPE_1__*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int PROV_RSA_AES ;
 int RtlCopyMemory (TYPE_1__*,int,int) ;
 scalar_t__ RtlEqualMemory (int,int *,int) ;
 int SHA_DIGEST_LENGTH ;
 int TRUE ;
 int kull_m_crypto_close_hprov_delete_container (int ) ;
 scalar_t__ kull_m_crypto_hash (int ,TYPE_1__*,int,int *,int) ;
 scalar_t__ kull_m_crypto_hkey (int ,int ,int,int,int ,int *,int *) ;

BOOL kull_m_dpapi_unprotect_domainkey_with_key(PKULL_M_DPAPI_MASTERKEY_DOMAINKEY domainkey, LPCVOID key, DWORD keyLen, PVOID *output, DWORD *outputLen, PSID *sid)
{
 BOOL status = FALSE;
 HCRYPTPROV hProv, hSessionProv;
 HCRYPTKEY hKey, hSessionKey;
 PKULL_M_DPAPI_DOMAIN_RSA_MASTER_KEY rsa_buffer;
 PKULL_M_DPAPI_DOMAIN_ACCESS_CHECK des_buffer;
 BYTE digest[SHA_DIGEST_LENGTH];
 DWORD cbOutput;
 PSID pSid;

 if(CryptAcquireContext(&hProv, ((void*)0), ((void*)0), PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
 {
  if(CryptImportKey(hProv, (PBYTE) key, keyLen, 0, 0, &hKey))
  {
   cbOutput = domainkey->dwSecretLen;
   if(rsa_buffer = (PKULL_M_DPAPI_DOMAIN_RSA_MASTER_KEY) LocalAlloc(LPTR, cbOutput))
   {
    RtlCopyMemory(rsa_buffer, domainkey->pbSecret, cbOutput);
    if(CryptDecrypt(hKey, 0, TRUE, 0, (PBYTE) rsa_buffer, &cbOutput))
    {





     if(kull_m_crypto_hkey(hProv, CALG_3DES, rsa_buffer->buffer + rsa_buffer->cbMasterKey, 192 / 8, 0, &hSessionKey, &hSessionProv))
     {
      if(CryptSetKeyParam(hSessionKey, KP_IV, rsa_buffer->buffer + rsa_buffer->cbMasterKey + 192 / 8, 0))
      {
       cbOutput = domainkey->dwAccesscheckLen;

       if(des_buffer = (PKULL_M_DPAPI_DOMAIN_ACCESS_CHECK) LocalAlloc(LPTR, cbOutput))
       {
        RtlCopyMemory(des_buffer, domainkey->pbAccesscheck, cbOutput);

        if(CryptDecrypt(hSessionKey, 0, FALSE, 0, (PBYTE) des_buffer, &cbOutput))
        {
         pSid = (PSID) (des_buffer->data + des_buffer->dataLen);





         if(kull_m_crypto_hash(CALG_SHA1, des_buffer, cbOutput - SHA_DIGEST_LENGTH, digest, SHA_DIGEST_LENGTH))
         {

          if(RtlEqualMemory((PBYTE) des_buffer + cbOutput - SHA_DIGEST_LENGTH, digest, SHA_DIGEST_LENGTH))
          {
           *outputLen = rsa_buffer->cbMasterKey;
           if(*output = LocalAlloc(LPTR, *outputLen))
           {
            RtlCopyMemory(*output, rsa_buffer->buffer, *outputLen);
            status = TRUE;
            *sid = ((void*)0);
            if(sid)
            {
             status = FALSE;
             cbOutput = GetLengthSid(pSid);
             if(*sid = (PSID) LocalAlloc(LPTR, cbOutput))
              status = CopySid(cbOutput, *sid, pSid);
            }
            if(!status)
            {
             if(*output)
              *output = LocalFree(*output);
             if(*sid)
              *sid = LocalFree(*sid);
             *outputLen = 0;
            }
           }
          }
         }
        }
        else PRINT_ERROR_AUTO(L"CryptDecrypt");
        LocalFree(des_buffer);
       }
      }
      else PRINT_ERROR_AUTO(L"CryptSetKeyParam");
      CryptDestroyKey(hSessionKey);
      if(!kull_m_crypto_close_hprov_delete_container(hSessionProv))
       PRINT_ERROR_AUTO(L"kull_m_crypto_close_hprov_delete_container");
     }
    }
    else PRINT_ERROR_AUTO(L"CryptDecrypt");
    LocalFree(rsa_buffer);
   }
   CryptDestroyKey(hKey);
  }
  CryptReleaseContext(hProv, 0);
 }
 return status;
}
