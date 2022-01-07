
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCHEMA_PREFIX_TABLE ;
typedef int LPCWSTR ;
typedef int BOOL ;
typedef int ATTRBLOCK ;


 int TRUE ;
 int kprintf (char*) ;
 int kuhl_m_lsadump_dcsync_descrSecret (int *,int *,int ) ;
 int kuhl_m_lsadump_dcsync_descrTrust (int *,int *,int ) ;
 int kuhl_m_lsadump_dcsync_descrUser (int *,int *) ;
 scalar_t__ kull_m_rpc_drsr_findMonoAttr (int *,int *,int ,int *,int *) ;
 int kull_m_rpc_drsr_findPrintMonoAttr (char*,int *,int *,int ,int ) ;
 int szOID_ANSI_currentValue ;
 int szOID_ANSI_name ;
 int szOID_ANSI_sAMAccountName ;
 int szOID_ANSI_trustPartner ;

void kuhl_m_lsadump_dcsync_descrObject(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes, LPCWSTR szSrcDomain, BOOL someExport)
{
 kull_m_rpc_drsr_findPrintMonoAttr(L"\nObject RDN           : ", prefixTable, attributes, szOID_ANSI_name, TRUE);
 kprintf(L"\n");
 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_sAMAccountName, ((void*)0), ((void*)0)))
  kuhl_m_lsadump_dcsync_descrUser(prefixTable, attributes);
 else if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_trustPartner, ((void*)0), ((void*)0)))
  kuhl_m_lsadump_dcsync_descrTrust(prefixTable, attributes, szSrcDomain);
 else if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_currentValue, ((void*)0), ((void*)0)))
  kuhl_m_lsadump_dcsync_descrSecret(prefixTable, attributes, someExport);
}
