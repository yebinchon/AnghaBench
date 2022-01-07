
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwNextLen; int guid; int dwVersion; } ;
struct TYPE_5__ {int __dwCount; int * entries; TYPE_1__ current; } ;
typedef TYPE_2__* PKULL_M_DPAPI_CREDHIST ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_dpapi_credhist_entry_descr (int,int ) ;
 int kull_m_string_displayGUID (int *) ;

void kull_m_dpapi_credhist_descr(DWORD level, PKULL_M_DPAPI_CREDHIST credhist)
{
 DWORD i;
 kprintf(L"%*s" L"**CREDHIST**\n", level << 1, L"");
 if(credhist)
 {
  kprintf(L"%*s" L"  dwVersion : %08x - %u\n", level << 1, L"", credhist->current.dwVersion, credhist->current.dwVersion);
  kprintf(L"%*s" L"  guid      : ", level << 1, L""); kull_m_string_displayGUID(&credhist->current.guid); kprintf(L"\n");
  kprintf(L"%*s" L"  dwNextLen : %08x - %u\n", level << 1, L"", credhist->current.dwNextLen, credhist->current.dwNextLen);
  for(i = 0; i < credhist->__dwCount; i++)
   kull_m_dpapi_credhist_entry_descr(level + 1, credhist->entries[i]);
  kprintf(L"\n");
 }
}
