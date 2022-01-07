
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ MaximumLength; scalar_t__ Buffer; } ;
typedef scalar_t__ PWSTR ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int BOOL ;


 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,scalar_t__) ;
 int TRUE ;

BOOL kull_m_string_copyUnicodeStringBuffer(PUNICODE_STRING pSource, PUNICODE_STRING pDestination)
{
 BOOL status = FALSE;
 if(pSource && pDestination && pSource->MaximumLength && pSource->Buffer)
 {
  *pDestination = *pSource;
  if(pDestination->Buffer = (PWSTR) LocalAlloc(LPTR, pSource->MaximumLength))
  {
   status = TRUE;
   RtlCopyMemory(pDestination->Buffer, pSource->Buffer, pSource->MaximumLength);
  }
 }
 return status;
}
