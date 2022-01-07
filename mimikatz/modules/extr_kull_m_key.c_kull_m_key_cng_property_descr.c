
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int dwNameLen; int dwPropertyLen; int pProperty; int pName; int unk; int type; int dwStructLen; } ;
typedef TYPE_1__* PKULL_M_KEY_CNG_PROPERTY ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_string_wprintf_hex (int ,int ,int ) ;

void kull_m_key_cng_property_descr(DWORD level, PKULL_M_KEY_CNG_PROPERTY property)
{
 kprintf(L"%*s" L"**KEY CNG PROPERTY**\n", level << 1, L"");
 if(property)
 {
  kprintf(L"%*s" L"  dwStructLen     : %08x - %u\n", level << 1, L"", property->dwStructLen, property->dwStructLen);
  kprintf(L"%*s" L"  type            : %08x - %u\n", level << 1, L"", property->type, property->type);
  kprintf(L"%*s" L"  unk             : %08x - %u\n", level << 1, L"", property->unk, property->unk);
  kprintf(L"%*s" L"  dwNameLen       : %08x - %u\n", level << 1, L"", property->dwNameLen, property->dwNameLen);
  kprintf(L"%*s" L"  dwPropertyLen   : %08x - %u\n", level << 1, L"", property->dwPropertyLen, property->dwPropertyLen);
  kprintf(L"%*s" L"  pName           : ", level << 1, L""); kprintf(L"%.*s\n", property->dwNameLen / sizeof(wchar_t), property->pName);
  kprintf(L"%*s" L"  pProperty       : ", level << 1, L""); kull_m_string_wprintf_hex(property->pProperty, property->dwPropertyLen, 0); kprintf(L"\n\n");
 }
}
