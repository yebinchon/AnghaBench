
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Buffer; } ;
typedef scalar_t__ PWSTR ;
typedef TYPE_1__* PUNICODE_STRING ;


 scalar_t__ LocalFree (scalar_t__) ;

void kull_m_string_freeUnicodeStringBuffer(PUNICODE_STRING pString)
{
 if(pString && pString->Buffer)
  pString->Buffer = (PWSTR) LocalFree(pString->Buffer);
}
