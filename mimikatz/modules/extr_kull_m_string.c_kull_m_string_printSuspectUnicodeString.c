
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_4__ {int Length; int Buffer; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int PVOID ;
typedef int LPWSTR ;
typedef int DWORD ;


 int kprintf (char*,TYPE_1__*) ;
 scalar_t__ kull_m_string_suspectUnicodeString (TYPE_1__*) ;
 int kull_m_string_wprintf_hex (int ,int ,int) ;

void kull_m_string_printSuspectUnicodeString(PVOID data, DWORD size)
{
 UNICODE_STRING uString = {(USHORT) size, (USHORT) size, (LPWSTR) data};
 if(kull_m_string_suspectUnicodeString(&uString))
  kprintf(L"%wZ", &uString);
 else
  kull_m_string_wprintf_hex(uString.Buffer, uString.Length, 1);
}
