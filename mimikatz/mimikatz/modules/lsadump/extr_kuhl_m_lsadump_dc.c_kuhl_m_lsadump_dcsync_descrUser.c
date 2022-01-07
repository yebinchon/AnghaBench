
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int valCount; TYPE_1__* pAVal; } ;
struct TYPE_4__ {scalar_t__ pVal; } ;
typedef int SCHEMA_PREFIX_TABLE ;
typedef scalar_t__ PVOID ;
typedef int PUSER_PROPERTIES ;
typedef int* PDWORD ;
typedef scalar_t__ PBYTE ;
typedef int LPFILETIME ;
typedef int DWORD ;
typedef TYPE_2__ ATTRVALBLOCK ;
typedef int ATTRBLOCK ;


 int ARRAYSIZE (int *) ;
 int FALSE ;
 int* GetSidSubAuthority (scalar_t__,scalar_t__) ;
 scalar_t__* GetSidSubAuthorityCount (scalar_t__) ;
 int * KUHL_M_LSADUMP_UF_FLAG ;
 int TRUE ;
 int kprintf (char*,...) ;
 int kuhl_m_lsadump_dcsync_decrypt (scalar_t__,int,int,char*,int ) ;
 int kuhl_m_lsadump_dcsync_descrUserProperties (int ) ;
 int kuhl_m_lsadump_samAccountType_toString (int) ;
 TYPE_2__* kull_m_rpc_drsr_findAttr (int *,int *,int ) ;
 scalar_t__ kull_m_rpc_drsr_findMonoAttr (int *,int *,int ,scalar_t__*,int*) ;
 int kull_m_rpc_drsr_findPrintMonoAttr (char*,int *,int *,int ,int ) ;
 int kull_m_string_displayLocalFileTime (int ) ;
 int kull_m_string_displaySID (scalar_t__) ;
 int min (int ,int) ;
 int szOID_ANSI_accountExpires ;
 int szOID_ANSI_dBCSPwd ;
 int szOID_ANSI_lmPwdHistory ;
 int szOID_ANSI_ntPwdHistory ;
 int szOID_ANSI_objectSid ;
 int szOID_ANSI_pwdLastSet ;
 int szOID_ANSI_sAMAccountName ;
 int szOID_ANSI_sAMAccountType ;
 int szOID_ANSI_sIDHistory ;
 int szOID_ANSI_supplementalCredentials ;
 int szOID_ANSI_unicodePwd ;
 int szOID_ANSI_userAccountControl ;
 int szOID_ANSI_userPrincipalName ;

void kuhl_m_lsadump_dcsync_descrUser(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes)
{
 DWORD rid = 0, i;
 PBYTE encodedData;
 DWORD encodedDataSize;
 PVOID data;
 ATTRVALBLOCK *sids;

 kprintf(L"** SAM ACCOUNT **\n\n");
 kull_m_rpc_drsr_findPrintMonoAttr(L"SAM Username         : ", prefixTable, attributes, szOID_ANSI_sAMAccountName, TRUE);
 kull_m_rpc_drsr_findPrintMonoAttr(L"User Principal Name  : ", prefixTable, attributes, szOID_ANSI_userPrincipalName, TRUE);

 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_sAMAccountType, &data, ((void*)0)))
  kprintf(L"Account Type         : %08x ( %s )\n", *(PDWORD) data, kuhl_m_lsadump_samAccountType_toString(*(PDWORD) data));

 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_userAccountControl, &data, ((void*)0)))
 {
  kprintf(L"User Account Control : %08x ( ", *(PDWORD) data);
  for(i = 0; i < min(ARRAYSIZE(KUHL_M_LSADUMP_UF_FLAG), sizeof(DWORD) * 8); i++)
   if((1 << i) & *(PDWORD) data)
    kprintf(L"%s ", KUHL_M_LSADUMP_UF_FLAG[i]);
  kprintf(L")\n");
 }

 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_accountExpires, &data, ((void*)0)))
 {
  kprintf(L"Account expiration   : ");
  kull_m_string_displayLocalFileTime((LPFILETIME) data);
  kprintf(L"\n");
 }

 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_pwdLastSet, &data, ((void*)0)))
 {
  kprintf(L"Password last change : ");
  kull_m_string_displayLocalFileTime((LPFILETIME) data);
  kprintf(L"\n");
 }

 if(sids = kull_m_rpc_drsr_findAttr(prefixTable, attributes, szOID_ANSI_sIDHistory))
 {
  kprintf(L"SID history:\n");
  for(i = 0; i < sids->valCount; i++)
  {
   kprintf(L"  ");
   kull_m_string_displaySID(sids->pAVal[i].pVal);
   kprintf(L"\n");
  }
 }

 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_objectSid, &data, ((void*)0)))
 {
  kprintf(L"Object Security ID   : ");
  kull_m_string_displaySID(data);
  kprintf(L"\n");
  rid = *GetSidSubAuthority(data, *GetSidSubAuthorityCount(data) - 1);
  kprintf(L"Object Relative ID   : %u\n", rid);

  kprintf(L"\nCredentials:\n");
  if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_unicodePwd, &encodedData, &encodedDataSize))
   kuhl_m_lsadump_dcsync_decrypt(encodedData, encodedDataSize, rid, L"NTLM", FALSE);
  if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_ntPwdHistory, &encodedData, &encodedDataSize))
   kuhl_m_lsadump_dcsync_decrypt(encodedData, encodedDataSize, rid, L"ntlm", TRUE);
  if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_dBCSPwd, &encodedData, &encodedDataSize))
   kuhl_m_lsadump_dcsync_decrypt(encodedData, encodedDataSize, rid, L"LM  ", FALSE);
  if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_lmPwdHistory, &encodedData, &encodedDataSize))
   kuhl_m_lsadump_dcsync_decrypt(encodedData, encodedDataSize, rid, L"lm  ", TRUE);
 }

 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_supplementalCredentials, &encodedData, &encodedDataSize))
 {
  kprintf(L"\nSupplemental Credentials:\n");
  kuhl_m_lsadump_dcsync_descrUserProperties((PUSER_PROPERTIES) encodedData);
 }
}
