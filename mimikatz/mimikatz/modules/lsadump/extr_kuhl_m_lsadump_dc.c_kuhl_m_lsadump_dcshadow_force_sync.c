
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwPushFlags; int szSchemaNamingContext; int szConfigurationNamingContext; int szDomainNamingContext; } ;
typedef TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef int NTSTATUS ;
typedef int DRS_HANDLE ;


 int DOMAIN_INFO_PUSH_FLAGS_CONFIG ;
 int DOMAIN_INFO_PUSH_FLAGS_ROOT ;
 int DOMAIN_INFO_PUSH_FLAGS_SCHEMA ;
 int NT_SUCCESS (int ) ;
 int STATUS_UNSUCCESSFUL ;
 int kuhl_m_lsadump_dcshadow_force_sync_partition (TYPE_1__*,int ,int ) ;

NTSTATUS kuhl_m_lsadump_dcshadow_force_sync(PDCSHADOW_DOMAIN_INFO info, DRS_HANDLE hDrs)
{
 NTSTATUS status = STATUS_UNSUCCESSFUL;

 if(info->dwPushFlags & DOMAIN_INFO_PUSH_FLAGS_ROOT)
 {
  status = kuhl_m_lsadump_dcshadow_force_sync_partition(info, hDrs, info->szDomainNamingContext);
  if(!NT_SUCCESS(status))
   return status;
 }
 if(info->dwPushFlags & DOMAIN_INFO_PUSH_FLAGS_CONFIG)
 {
  status = kuhl_m_lsadump_dcshadow_force_sync_partition(info, hDrs, info->szConfigurationNamingContext);
  if(!NT_SUCCESS(status))
   return status;
 }
 if(info->dwPushFlags & DOMAIN_INFO_PUSH_FLAGS_SCHEMA)
 {
  status = kuhl_m_lsadump_dcshadow_force_sync_partition(info, hDrs, info->szSchemaNamingContext);
  if(!NT_SUCCESS(status))
   return status;
 }
 return status;
}
