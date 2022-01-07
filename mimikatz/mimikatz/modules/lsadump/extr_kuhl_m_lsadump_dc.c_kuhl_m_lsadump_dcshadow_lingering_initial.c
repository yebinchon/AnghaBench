
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ld; int szDsServiceName; int szFakeDCNetBIOS; } ;
typedef int PWSTR ;
typedef TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef int NTSTATUS ;


 int LocalFree (int ) ;
 int STATUS_UNSUCCESSFUL ;
 int kuhl_m_lsadump_dcshadow_lingering_trigger (int ,int ,int ) ;
 scalar_t__ kull_m_string_sprintf (int *,char*,int ,int ) ;

NTSTATUS kuhl_m_lsadump_dcshadow_lingering_initial(PDCSHADOW_DOMAIN_INFO info, PWSTR szObjectToKill)
{
 NTSTATUS status = STATUS_UNSUCCESSFUL;
 PWSTR szTargetNTDS;
 if(kull_m_string_sprintf(&szTargetNTDS, L"CN=NTDS Settings,CN=%s%s", info->szFakeDCNetBIOS, info->szDsServiceName))
 {
  status = kuhl_m_lsadump_dcshadow_lingering_trigger(info->ld, szTargetNTDS, szObjectToKill);
  LocalFree(szTargetNTDS);
 }
 return status;
}
