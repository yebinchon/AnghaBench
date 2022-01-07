
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int __count; int * Credentials; int structSize; int dwVersion; } ;
typedef TYPE_1__* PKULL_M_CRED_LEGACY_CREDS_BLOB ;
typedef int DWORD ;


 int kprintf (char*,int,char*,...) ;
 int kull_m_cred_legacy_cred_descr (int,int ) ;

void kull_m_cred_legacy_creds_descr(DWORD level, PKULL_M_CRED_LEGACY_CREDS_BLOB creds)
{
 DWORD i;
 kprintf(L"%*s" L"**LEGACY CREDENTIALS GROUP**\n", level << 1, L"");
 if(creds)
 {
  kprintf(L"%*s" L"  dwVersion      : %08x - %u\n", level << 1, L"", creds->dwVersion, creds->dwVersion);
  kprintf(L"%*s" L"  structSize     : %08x - %u\n", level << 1, L"", creds->structSize, creds->structSize);
  kprintf(L"%*s" L"  Credentials    : %u\n", level << 1, L"", creds->__count);
  for(i = 0; i < creds->__count; i++)
   kull_m_cred_legacy_cred_descr(level + 1, creds->Credentials[i]);
 }
}
