
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ xs_recheck; } ;
struct TYPE_4__ {int slot; int scan; TYPE_3__* iscan; scalar_t__ irel; } ;
typedef TYPE_1__* SysScanDesc ;
typedef int * HeapTuple ;


 int Assert (int) ;
 int ERROR ;
 int * ExecFetchSlotHeapTuple (int ,int,int*) ;
 int ForwardScanDirection ;
 int elog (int ,char*) ;
 scalar_t__ index_getnext_slot (TYPE_3__*,int ,int ) ;
 scalar_t__ table_scan_getnextslot (int ,int ,int ) ;

HeapTuple
systable_getnext(SysScanDesc sysscan)
{
 HeapTuple htup = ((void*)0);

 if (sysscan->irel)
 {
  if (index_getnext_slot(sysscan->iscan, ForwardScanDirection, sysscan->slot))
  {
   bool shouldFree;

   htup = ExecFetchSlotHeapTuple(sysscan->slot, 0, &shouldFree);
   Assert(!shouldFree);
   if (sysscan->iscan->xs_recheck)
    elog(ERROR, "system catalog scans with lossy index conditions are not implemented");
  }
 }
 else
 {
  if (table_scan_getnextslot(sysscan->scan, ForwardScanDirection, sysscan->slot))
  {
   bool shouldFree;

   htup = ExecFetchSlotHeapTuple(sysscan->slot, 0, &shouldFree);
   Assert(!shouldFree);
  }
 }

 return htup;
}
