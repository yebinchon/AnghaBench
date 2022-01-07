
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int guid; int dwVersion; } ;
typedef TYPE_1__* PKULL_M_DPAPI_MASTERKEY_CREDHIST ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_string_displayGUID (int *) ;

void kull_m_dpapi_masterkeys_credhist_descr(DWORD level, PKULL_M_DPAPI_MASTERKEY_CREDHIST credhist)
{
 kprintf(L"%*s" L"**CREDHIST INFO**\n", level << 1, L"");
 if(credhist)
 {
  kprintf(L"%*s" L"  dwVersion        : %08x - %u\n", level << 1, L"", credhist->dwVersion, credhist->dwVersion);
  kprintf(L"%*s" L"  guid             : ", level << 1, L""); kull_m_string_displayGUID(&credhist->guid); kprintf(L"\n\n");
 }
}
