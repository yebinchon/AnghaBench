
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int valLen; scalar_t__ pVal; } ;
typedef int PSecPkgContext_SessionKey ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;
typedef TYPE_1__ ATTRVAL ;


 scalar_t__ FALSE ;
 int LM_NTLM_HASH_LENGTH ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*,...) ;
 int RtlCopyMemory (scalar_t__,int *,int) ;
 int RtlEncryptDES2blocks1DWORD (scalar_t__,scalar_t__*,int *) ;
 scalar_t__ TRUE ;
 scalar_t__ kull_m_rpc_drsr_CreateGetNCChangesReply_encrypt (TYPE_1__*,int ) ;

BOOL kuhl_m_lsadump_dcshadow_encode_sensitive_value(BOOL fNTLM, DWORD rid, ATTRVAL *val, PSecPkgContext_SessionKey SessionKey)
{
 DWORD i;
 BYTE data[LM_NTLM_HASH_LENGTH];
 BOOL status = FALSE;

 if(fNTLM)
 {
  if(!(val->valLen % LM_NTLM_HASH_LENGTH))
  {
   status = TRUE;
   for(i = 0; (i < val->valLen) && status; i += LM_NTLM_HASH_LENGTH)
   {
    status = NT_SUCCESS(RtlEncryptDES2blocks1DWORD(val->pVal + i, &rid, data));
    if(status)
     RtlCopyMemory(val->pVal + i, data, LM_NTLM_HASH_LENGTH);
    else PRINT_ERROR(L"RtlEncryptDES2blocks1DWORD");
   }
  }
  else PRINT_ERROR(L"Unexpected hash len (%u)\n", val->valLen);
 }
 if(!fNTLM || status)
  status = kull_m_rpc_drsr_CreateGetNCChangesReply_encrypt(val, SessionKey);
 return status;
}
