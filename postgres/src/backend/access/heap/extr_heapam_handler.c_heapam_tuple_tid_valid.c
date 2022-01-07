
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_2__ {scalar_t__ rs_nblocks; } ;
typedef int ItemPointer ;
typedef TYPE_1__* HeapScanDesc ;


 scalar_t__ ItemPointerGetBlockNumber (int ) ;
 scalar_t__ ItemPointerIsValid (int ) ;

__attribute__((used)) static bool
heapam_tuple_tid_valid(TableScanDesc scan, ItemPointer tid)
{
 HeapScanDesc hscan = (HeapScanDesc) scan;

 return ItemPointerIsValid(tid) &&
  ItemPointerGetBlockNumber(tid) < hscan->rs_nblocks;
}
