
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ snapshot; int scan; scalar_t__ irel; int iscan; int * slot; } ;
typedef TYPE_1__* SysScanDesc ;


 int AccessShareLock ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int UnregisterSnapshot (scalar_t__) ;
 int index_close (scalar_t__,int ) ;
 int index_endscan (int ) ;
 int pfree (TYPE_1__*) ;
 int table_endscan (int ) ;

void
systable_endscan(SysScanDesc sysscan)
{
 if (sysscan->slot)
 {
  ExecDropSingleTupleTableSlot(sysscan->slot);
  sysscan->slot = ((void*)0);
 }

 if (sysscan->irel)
 {
  index_endscan(sysscan->iscan);
  index_close(sysscan->irel, AccessShareLock);
 }
 else
  table_endscan(sysscan->scan);

 if (sysscan->snapshot)
  UnregisterSnapshot(sysscan->snapshot);

 pfree(sysscan);
}
