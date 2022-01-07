
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int calcChecksum ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_19__ {scalar_t__ valLen; int * pVal; } ;
struct TYPE_18__ {scalar_t__ Buffer; scalar_t__ MaximumLength; scalar_t__ Length; int member_2; int member_1; int member_0; } ;
struct TYPE_17__ {int digest; } ;
struct TYPE_16__ {scalar_t__ CheckSum; int EncryptedData; scalar_t__ Salt; } ;
struct TYPE_15__ {int SessionKeyLength; scalar_t__ SessionKey; } ;
typedef TYPE_1__ SecPkgContext_SessionKey ;
typedef int * PVOID ;
typedef TYPE_1__* PSecPkgContext_SessionKey ;
typedef TYPE_3__* PENCRYPTED_PAYLOAD ;
typedef scalar_t__ PBYTE ;
typedef TYPE_4__ MD5_CTX ;
typedef scalar_t__ DWORD ;
typedef TYPE_5__ CRYPTO_BUFFER ;
typedef int BOOL ;
typedef TYPE_6__ ATTRVAL ;


 int CALG_CRC32 ;
 int CheckSum ;
 int ENCRYPTED_PAYLOAD ;
 int EncryptedData ;
 int FALSE ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int MD5Final (TYPE_4__*) ;
 int MD5Init (TYPE_4__*) ;
 int MD5Update (TYPE_4__*,scalar_t__,int) ;
 int MD5_DIGEST_LENGTH ;
 scalar_t__ MIDL_user_allocate (scalar_t__) ;
 int MIDL_user_free (int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*,...) ;
 int RtlCopyMemory (int *,int ,scalar_t__) ;
 int RtlEncryptDecryptRC4 (TYPE_5__*,TYPE_5__*) ;
 int TRUE ;
 scalar_t__ kull_m_crypto_hash (int ,int ,scalar_t__,scalar_t__*,int) ;
 TYPE_1__ kull_m_rpc_drsr_g_sKey ;

BOOL kull_m_rpc_drsr_ProcessGetNCChangesReply_decrypt(ATTRVAL *val, SecPkgContext_SessionKey *SessionKey)
{
 BOOL status = FALSE;
 PSecPkgContext_SessionKey pKey = SessionKey ? SessionKey : &kull_m_rpc_drsr_g_sKey;
 PENCRYPTED_PAYLOAD encrypted = (PENCRYPTED_PAYLOAD) val->pVal;
 MD5_CTX md5ctx;
 CRYPTO_BUFFER cryptoKey = {MD5_DIGEST_LENGTH, MD5_DIGEST_LENGTH, md5ctx.digest}, cryptoData;
 DWORD realLen, calcChecksum;
 PVOID toFree;

 if(pKey->SessionKey && pKey->SessionKeyLength)
 {
  if((val->valLen >= (ULONG) FIELD_OFFSET(ENCRYPTED_PAYLOAD, EncryptedData)) && val->pVal)
  {
   MD5Init(&md5ctx);
   MD5Update(&md5ctx, pKey->SessionKey, pKey->SessionKeyLength);
   MD5Update(&md5ctx, encrypted->Salt, sizeof(encrypted->Salt));
   MD5Final(&md5ctx);
   cryptoData.Length = cryptoData.MaximumLength = val->valLen - FIELD_OFFSET(ENCRYPTED_PAYLOAD, CheckSum);
   cryptoData.Buffer = (PBYTE) &encrypted->CheckSum;
   if(NT_SUCCESS(RtlEncryptDecryptRC4(&cryptoData, &cryptoKey)))
   {
    realLen = val->valLen - FIELD_OFFSET(ENCRYPTED_PAYLOAD, EncryptedData);
    if(kull_m_crypto_hash(CALG_CRC32, encrypted->EncryptedData, realLen, &calcChecksum, sizeof(calcChecksum)))
    {
     if(calcChecksum == encrypted->CheckSum)
     {
      toFree = val->pVal;
      if(val->pVal = (UCHAR *) MIDL_user_allocate(realLen))
      {
       RtlCopyMemory(val->pVal, encrypted->EncryptedData, realLen);
       val->valLen = realLen;
       status = TRUE;
       MIDL_user_free(toFree);
      }
     }
     else PRINT_ERROR(L"Checksums don\'t match (C:0x%08x - R:0x%08x)\n", calcChecksum, encrypted->CheckSum);
    }
    else PRINT_ERROR(L"Unable to calculate CRC32\n");
   }
   else PRINT_ERROR(L"RtlEncryptDecryptRC4\n");
  }
  else PRINT_ERROR(L"No valid data\n");
 }
 else PRINT_ERROR(L"No Session Key\n");
 return status;
}
