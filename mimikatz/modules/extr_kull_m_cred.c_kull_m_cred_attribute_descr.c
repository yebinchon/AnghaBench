
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ValueSize; int Value; int Keyword; int Flags; } ;
typedef TYPE_1__* PKULL_M_CRED_ATTRIBUTE ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_string_printSuspectUnicodeString (int ,int ) ;

void kull_m_cred_attribute_descr(DWORD level, PKULL_M_CRED_ATTRIBUTE Attribute)
{
 kprintf(L"%*s" L"**ATTRIBUTE**\n", level << 1, L"");
 if(Attribute)
 {
  kprintf(L"%*s" L"  Flags   : %08x - %u\n", level << 1, L"", Attribute->Flags, Attribute->Flags);
  kprintf(L"%*s" L"  Keyword : %s\n", level << 1, L"", Attribute->Keyword);
  kprintf(L"%*s" L"  Value   : ", level << 1, L"");
  kull_m_string_printSuspectUnicodeString(Attribute->Value, Attribute->ValueSize);
  kprintf(L"\n");
 }
}
