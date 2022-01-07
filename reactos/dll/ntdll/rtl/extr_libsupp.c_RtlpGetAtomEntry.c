
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int * AtomEntry; } ;
struct TYPE_4__ {int RtlHandleTable; } ;
typedef int PRTL_HANDLE_TABLE_ENTRY ;
typedef int * PRTL_ATOM_TABLE_ENTRY ;
typedef TYPE_1__* PRTL_ATOM_TABLE ;
typedef TYPE_2__* PRTL_ATOM_HANDLE ;


 scalar_t__ RtlIsValidIndexHandle (int *,int ,int *) ;

PRTL_ATOM_TABLE_ENTRY
RtlpGetAtomEntry(PRTL_ATOM_TABLE AtomTable, ULONG Index)
{
   PRTL_HANDLE_TABLE_ENTRY RtlHandle;

   if (RtlIsValidIndexHandle(&AtomTable->RtlHandleTable,
                             Index,
                             &RtlHandle))
   {
      PRTL_ATOM_HANDLE AtomHandle = (PRTL_ATOM_HANDLE)RtlHandle;

      return AtomHandle->AtomEntry;
   }

   return ((void*)0);
}
