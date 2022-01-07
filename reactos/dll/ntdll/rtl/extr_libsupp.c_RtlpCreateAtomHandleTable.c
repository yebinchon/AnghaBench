
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RtlHandleTable; } ;
typedef int RTL_ATOM_HANDLE ;
typedef TYPE_1__* PRTL_ATOM_TABLE ;
typedef int BOOLEAN ;


 int RtlInitializeHandleTable (int,int,int *) ;
 int TRUE ;

BOOLEAN
RtlpCreateAtomHandleTable(PRTL_ATOM_TABLE AtomTable)
{
   RtlInitializeHandleTable(0xCFFF,
                            sizeof(RTL_ATOM_HANDLE),
                            &AtomTable->RtlHandleTable);

   return TRUE;
}
