
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_3__ {int * ss_ScanTupleSlot; } ;
typedef TYPE_1__ ScanState ;


 int ExecSetSlotDescriptor (int *,int ) ;

void
ExecAssignScanType(ScanState *scanstate, TupleDesc tupDesc)
{
 TupleTableSlot *slot = scanstate->ss_ScanTupleSlot;

 ExecSetSlotDescriptor(slot, tupDesc);
}
