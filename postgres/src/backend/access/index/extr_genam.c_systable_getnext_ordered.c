
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ xs_recheck; } ;
struct TYPE_4__ {TYPE_3__* iscan; int slot; int irel; } ;
typedef TYPE_1__* SysScanDesc ;
typedef int ScanDirection ;
typedef int * HeapTuple ;


 int Assert (int ) ;
 int ERROR ;
 int * ExecFetchSlotHeapTuple (int ,int,int *) ;
 int elog (int ,char*) ;
 scalar_t__ index_getnext_slot (TYPE_3__*,int ,int ) ;

HeapTuple
systable_getnext_ordered(SysScanDesc sysscan, ScanDirection direction)
{
 HeapTuple htup = ((void*)0);

 Assert(sysscan->irel);
 if (index_getnext_slot(sysscan->iscan, direction, sysscan->slot))
  htup = ExecFetchSlotHeapTuple(sysscan->slot, 0, ((void*)0));


 if (htup && sysscan->iscan->xs_recheck)
  elog(ERROR, "system catalog scans with lossy index conditions are not implemented");

 return htup;
}
