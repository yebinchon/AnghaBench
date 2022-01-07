
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_8__ {scalar_t__ Buffer; scalar_t__ MaximumLength; scalar_t__ Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int SCHEMA_PREFIX_TABLE ;
typedef scalar_t__ PWSTR ;
typedef scalar_t__ PBYTE ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef int ATTRBLOCK ;


 int FALSE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int RtlInitUnicodeString (TYPE_1__*,int ) ;
 int RtlUpcaseUnicodeString (TYPE_1__*,TYPE_1__*,int ) ;
 int TRUE ;
 int kprintf (char*,...) ;
 int kuhl_m_lsadump_dcsync_descrTrustAuthentication (int *,int *,TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ kull_m_rpc_drsr_findMonoAttr (int *,int *,int ,scalar_t__*,scalar_t__*) ;
 int szOID_ANSI_trustPartner ;

void kuhl_m_lsadump_dcsync_descrTrust(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes, LPCWSTR szSrcDomain)
{
 PBYTE encodedData;
 DWORD encodedDataSize;
 UNICODE_STRING uPartner, uDomain, uUpcasePartner, uUpcaseDomain;

 kprintf(L"** TRUSTED DOMAIN - Antisocial **\n\n");

 if(kull_m_rpc_drsr_findMonoAttr(prefixTable, attributes, szOID_ANSI_trustPartner, &encodedData, &encodedDataSize))
 {
  uPartner.Length = uPartner.MaximumLength = (USHORT) encodedDataSize;
  uPartner.Buffer = (PWSTR) encodedData;
  kprintf(L"Partner              : %wZ\n", &uPartner);
  if(NT_SUCCESS(RtlUpcaseUnicodeString(&uUpcasePartner, &uPartner, TRUE)))
  {
   RtlInitUnicodeString(&uDomain, szSrcDomain);
   if(NT_SUCCESS(RtlUpcaseUnicodeString(&uUpcaseDomain, &uDomain, TRUE)))
   {
    kuhl_m_lsadump_dcsync_descrTrustAuthentication(prefixTable, attributes, &uUpcaseDomain, &uUpcasePartner, TRUE);
    kuhl_m_lsadump_dcsync_descrTrustAuthentication(prefixTable, attributes, &uUpcaseDomain, &uUpcasePartner, FALSE);
    RtlFreeUnicodeString(&uUpcaseDomain);
   }
   RtlFreeUnicodeString(&uUpcasePartner);
  }
 }
}
