
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xs_cbuf; } ;
typedef int IndexFetchTableData ;
typedef TYPE_1__ IndexFetchHeapData ;


 scalar_t__ BufferIsValid (int ) ;
 int InvalidBuffer ;
 int ReleaseBuffer (int ) ;

__attribute__((used)) static void
heapam_index_fetch_reset(IndexFetchTableData *scan)
{
 IndexFetchHeapData *hscan = (IndexFetchHeapData *) scan;

 if (BufferIsValid(hscan->xs_cbuf))
 {
  ReleaseBuffer(hscan->xs_cbuf);
  hscan->xs_cbuf = InvalidBuffer;
 }
}
