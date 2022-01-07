
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ aiKeyAlg; scalar_t__ reserved; int bVersion; int bType; } ;
struct TYPE_5__ {scalar_t__ dwKeyLen; TYPE_1__ Header; } ;
typedef TYPE_2__* PGENERICKEY_BLOB ;
typedef scalar_t__ PBYTE ;
typedef int LPCVOID ;
typedef int LPCBYTE ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int GENERICKEY_BLOB ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;
typedef scalar_t__ ALG_ID ;


 scalar_t__ CALG_3DES ;
 int CUR_BLOB_VERSION ;
 int CryptImportKey (int ,int ,scalar_t__,int ,scalar_t__,int *) ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int LocalFree (TYPE_2__*) ;
 int PLAINTEXTKEYBLOB ;
 int RtlCopyMemory (scalar_t__,int ,scalar_t__) ;
 int kull_m_crypto_hkey_session (scalar_t__,int ,scalar_t__,scalar_t__,int *,int *) ;

BOOL kull_m_crypto_hkey(HCRYPTPROV hProv, ALG_ID calgid, LPCVOID key, DWORD keyLen, DWORD flags, HCRYPTKEY *hKey, HCRYPTPROV *hSessionProv)
{
 BOOL status = FALSE;
 PGENERICKEY_BLOB keyBlob;
 DWORD szBlob = sizeof(GENERICKEY_BLOB) + keyLen;

 if(calgid != CALG_3DES)
 {
  if(keyBlob = (PGENERICKEY_BLOB) LocalAlloc(LPTR, szBlob))
  {
   keyBlob->Header.bType = PLAINTEXTKEYBLOB;
   keyBlob->Header.bVersion = CUR_BLOB_VERSION;
   keyBlob->Header.reserved = 0;
   keyBlob->Header.aiKeyAlg = calgid;
   keyBlob->dwKeyLen = keyLen;
   RtlCopyMemory((PBYTE) keyBlob + sizeof(GENERICKEY_BLOB), key, keyBlob->dwKeyLen);
   status = CryptImportKey(hProv, (LPCBYTE) keyBlob, szBlob, 0, flags, hKey);
   LocalFree(keyBlob);
  }
 }
 else if(hSessionProv)
  status = kull_m_crypto_hkey_session(calgid, key, keyLen, flags, hKey, hSessionProv);

 return status;
}
