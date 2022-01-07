
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCHEMA_PREFIX_TABLE ;
typedef int PVOID ;
typedef int PBYTE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int ATTRBLOCK ;


 int FALSE ;
 int * GetSidSubAuthority (int ,scalar_t__) ;
 scalar_t__* GetSidSubAuthorityCount (int ) ;
 int LM_NTLM_HASH_LENGTH ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*) ;
 int RtlDecryptDES2blocks1DWORD (int ,int *,int *) ;
 int kprintf (char*,...) ;
 scalar_t__ kull_m_rpc_drsr_findMonoAttr (int *,int *,int ,int *,int *) ;
 int kull_m_rpc_drsr_findPrintMonoAttr (int *,int *,int *,int ,int ) ;
 int kull_m_string_wprintf_hex (int *,int,int ) ;
 int szOID_ANSI_objectSid ;
 int szOID_ANSI_sAMAccountName ;
 int szOID_ANSI_unicodePwd ;

void kuhl_m_lsadump_dcsync_descrObject_csv(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes)
{
 DWORD rid = 0;
 PBYTE unicodePwd;
 DWORD unicodePwdSize;
 PVOID sid;
 BYTE clearHash[LM_NTLM_HASH_LENGTH];
 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_sAMAccountName, ((void*)0), ((void*)0)) &&
  kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_objectSid, &sid, ((void*)0)) &&
  kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_unicodePwd, &unicodePwd, &unicodePwdSize))
 {
  rid = *GetSidSubAuthority(sid, *GetSidSubAuthorityCount(sid) - 1);
  kprintf(L"%u\t", rid);
  kull_m_rpc_drsr_findPrintMonoAttr(((void*)0), prefixTable, attributes, szOID_ANSI_sAMAccountName, FALSE);
  kprintf(L"\t");
  if(NT_SUCCESS(RtlDecryptDES2blocks1DWORD(unicodePwd, &rid, clearHash)))
   kull_m_string_wprintf_hex(clearHash, LM_NTLM_HASH_LENGTH, 0);
  else PRINT_ERROR(L"RtlDecryptDES2blocks1DWORD");
  kprintf(L"\n");
 }
}
