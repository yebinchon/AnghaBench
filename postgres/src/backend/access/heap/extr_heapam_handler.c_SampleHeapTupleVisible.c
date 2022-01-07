
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TableScanDesc ;
struct TYPE_5__ {int rs_ntuples; scalar_t__* rs_vistuples; } ;
struct TYPE_4__ {int rs_flags; int rs_snapshot; } ;
typedef scalar_t__ OffsetNumber ;
typedef int HeapTuple ;
typedef TYPE_2__* HeapScanDesc ;
typedef int Buffer ;


 int HeapTupleSatisfiesVisibility (int ,int ,int ) ;
 int SO_ALLOW_PAGEMODE ;

__attribute__((used)) static bool
SampleHeapTupleVisible(TableScanDesc scan, Buffer buffer,
        HeapTuple tuple,
        OffsetNumber tupoffset)
{
 HeapScanDesc hscan = (HeapScanDesc) scan;

 if (scan->rs_flags & SO_ALLOW_PAGEMODE)
 {
  int start = 0,
     end = hscan->rs_ntuples - 1;

  while (start <= end)
  {
   int mid = (start + end) / 2;
   OffsetNumber curoffset = hscan->rs_vistuples[mid];

   if (tupoffset == curoffset)
    return 1;
   else if (tupoffset < curoffset)
    end = mid - 1;
   else
    start = mid + 1;
  }

  return 0;
 }
 else
 {

  return HeapTupleSatisfiesVisibility(tuple, scan->rs_snapshot,
           buffer);
 }
}
