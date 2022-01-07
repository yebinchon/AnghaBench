
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_6__ {int RtlHandleTable; } ;
struct TYPE_5__ {scalar_t__ HandleIndex; } ;
typedef int PRTL_HANDLE_TABLE_ENTRY ;
typedef TYPE_1__* PRTL_ATOM_TABLE_ENTRY ;
typedef TYPE_2__* PRTL_ATOM_TABLE ;


 int RtlFreeHandle (int *,int ) ;
 scalar_t__ RtlIsValidIndexHandle (int *,int ,int *) ;

VOID
RtlpFreeAtomHandle(PRTL_ATOM_TABLE AtomTable, PRTL_ATOM_TABLE_ENTRY Entry)
{
   PRTL_HANDLE_TABLE_ENTRY RtlHandleEntry;

   if (RtlIsValidIndexHandle(&AtomTable->RtlHandleTable,
                             (ULONG)Entry->HandleIndex,
                             &RtlHandleEntry))
   {
      RtlFreeHandle(&AtomTable->RtlHandleTable,
                    RtlHandleEntry);
   }
}
