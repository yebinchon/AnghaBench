
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int MaximumLength; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int * PWSTR ;
typedef int GUID ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RtlCopyMemory (int *,int ,int ) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int RtlStringFromGUID (int *,TYPE_1__*) ;
 int UuidCreate (int *) ;

PWSTR kull_m_string_getRandomGUID()
{
 UNICODE_STRING uString;
 GUID guid;
 PWSTR buffer = ((void*)0);
 if(NT_SUCCESS(UuidCreate(&guid)))
 {
  if(NT_SUCCESS(RtlStringFromGUID(&guid, &uString)))
  {
   if(buffer = (PWSTR) LocalAlloc(LPTR, uString.MaximumLength))
    RtlCopyMemory(buffer, uString.Buffer, uString.MaximumLength);
   RtlFreeUnicodeString(&uString);
  }
 }
 return buffer;
}
