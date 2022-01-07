
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int InvocationId; int InstanceId; } ;
struct TYPE_10__ {int * request; int szFakeFQDN; TYPE_3__ mimiDc; TYPE_3__ realDc; int szDCFQDN; int fUseSchemaSignature; } ;
typedef TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef int DWORD ;
typedef int DCSHADOW_DOMAIN_DC_INFO ;
typedef int BOOL ;


 int FALSE ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int kprintf (char*,...) ;
 int kuhl_m_lsadump_dcshadow_build_replication (TYPE_1__*) ;
 int kuhl_m_lsadump_dcshadow_domaininfo_computer (TYPE_1__*) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_domaininfo_rootDse (TYPE_1__*) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_domaininfo_schemasignature (TYPE_1__*) ;
 int kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID (TYPE_1__*,int ,TYPE_3__*) ;
 int kull_m_string_displayGUID (int *) ;

BOOL kuhl_m_lsadump_dcshadow_domain_and_replication_info(PDCSHADOW_DOMAIN_INFO info)
{
 BOOL fSuccess = FALSE;
 DWORD dwErr = 0;

 kprintf(L"** Domain Info **\n\n");
 fSuccess = kuhl_m_lsadump_dcshadow_domaininfo_rootDse(info)
  && (!info->fUseSchemaSignature || kuhl_m_lsadump_dcshadow_domaininfo_schemasignature(info));
 if(fSuccess)
 {
  fSuccess = kuhl_m_lsadump_dcshadow_domaininfo_computer(info);
 }
 kprintf(L"\n");
 if(fSuccess)
 {
  kprintf(L"** Server Info **\n\n");
  if(fSuccess = kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID(info, info->szDCFQDN, &info->realDc))
  {
   kprintf(L"Server: %s\n  InstanceId  : ", info->szDCFQDN);
   kull_m_string_displayGUID(&info->realDc.InstanceId);
   kprintf(L"\n  InvocationId: ");
   kull_m_string_displayGUID(&info->realDc.InvocationId);
   kprintf(L"\n");
  }
  RtlZeroMemory(&info->mimiDc, sizeof(DCSHADOW_DOMAIN_DC_INFO));
  if(kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID(info, info->szFakeFQDN, &info->mimiDc))
  {
   kprintf(L"Fake Server (already registered): %s\n  InstanceId  : ", info->szFakeFQDN);
   kull_m_string_displayGUID(&info->mimiDc.InstanceId);
   kprintf(L"\n  InvocationId: ");
   kull_m_string_displayGUID(&info->mimiDc.InvocationId);
   kprintf(L"\n");
  }
  else kprintf(L"Fake Server (not already registered): %s\n", info->szFakeFQDN);
  kprintf(L"\n");
 }
 if(fSuccess && info->request != ((void*)0))
  fSuccess = kuhl_m_lsadump_dcshadow_build_replication(info);
 return fSuccess;
}
