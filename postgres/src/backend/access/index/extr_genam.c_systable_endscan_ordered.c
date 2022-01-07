
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ snapshot; int iscan; int irel; int * slot; } ;
typedef TYPE_1__* SysScanDesc ;


 int Assert (int ) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int UnregisterSnapshot (scalar_t__) ;
 int index_endscan (int ) ;
 int pfree (TYPE_1__*) ;

void
systable_endscan_ordered(SysScanDesc sysscan)
{
 if (sysscan->slot)
 {
  ExecDropSingleTupleTableSlot(sysscan->slot);
  sysscan->slot = ((void*)0);
 }

 Assert(sysscan->irel);
 index_endscan(sysscan->iscan);
 if (sysscan->snapshot)
  UnregisterSnapshot(sysscan->snapshot);
 pfree(sysscan);
}
