
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offsetToPreviousAuthenticationInformation; scalar_t__ offsetToAuthenticationInformation; scalar_t__ count; } ;
typedef int SCHEMA_PREFIX_TABLE ;
typedef TYPE_1__* PNTDS_LSA_AUTH_INFORMATIONS ;
typedef int PNTDS_LSA_AUTH_INFORMATION ;
typedef int PCUNICODE_STRING ;
typedef scalar_t__ PBYTE ;
typedef char* LPCWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;
typedef int ATTRBLOCK ;


 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int NTDS_LSA_AUTH_INFORMATIONS ;
 int count ;
 int kuhl_m_lsadump_trust_authinformation (int *,int ,int ,char*,int ,int ) ;
 scalar_t__ kull_m_rpc_drsr_findMonoAttr (int *,int *,int ,scalar_t__*,int *) ;
 int szOID_ANSI_trustAuthIncoming ;
 int szOID_ANSI_trustAuthOutgoing ;

void kuhl_m_lsadump_dcsync_descrTrustAuthentication(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes, PCUNICODE_STRING domain, PCUNICODE_STRING partner, BOOL isIn)
{
 PBYTE encodedData;
 DWORD encodedDataSize;
 PNTDS_LSA_AUTH_INFORMATIONS authInfos;
 LPCWSTR prefix, prefixOld;
 PCUNICODE_STRING from, dest;

 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, isIn ? szOID_ANSI_trustAuthIncoming : szOID_ANSI_trustAuthOutgoing, &encodedData, &encodedDataSize))
 {
  if(isIn)
  {
   prefix = L"  In ";
   prefixOld = L" In-1";
   from = domain;
   dest = partner;
  }
  else
  {
   prefix = L" Out ";
   prefixOld = L"Out-1";
   from = partner;
   dest = domain;
  }
  authInfos = (PNTDS_LSA_AUTH_INFORMATIONS) encodedData;
  if(authInfos->count)
  {
   if(authInfos->offsetToAuthenticationInformation)
    kuhl_m_lsadump_trust_authinformation(((void*)0), 0, (PNTDS_LSA_AUTH_INFORMATION) ((PBYTE) authInfos + FIELD_OFFSET(NTDS_LSA_AUTH_INFORMATIONS, count) + authInfos->offsetToAuthenticationInformation), prefix, from, dest);
   if(authInfos->offsetToPreviousAuthenticationInformation)
    kuhl_m_lsadump_trust_authinformation(((void*)0), 0, (PNTDS_LSA_AUTH_INFORMATION) ((PBYTE) authInfos + FIELD_OFFSET(NTDS_LSA_AUTH_INFORMATIONS, count) + authInfos->offsetToPreviousAuthenticationInformation), prefixOld, from, dest);
  }
 }
}
