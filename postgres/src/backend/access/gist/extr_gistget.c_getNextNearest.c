
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int orderByTypes; } ;
struct TYPE_14__ {TYPE_4__* recontup; int recheckDistances; int recheck; int heapPtr; } ;
struct TYPE_15__ {TYPE_1__ heap; } ;
struct TYPE_17__ {int distances; TYPE_2__ data; } ;
struct TYPE_16__ {TYPE_4__* xs_hitup; scalar_t__ xs_want_itup; int xs_recheck; int xs_heaptid; int opaque; } ;
typedef TYPE_3__* IndexScanDesc ;
typedef TYPE_4__ GISTSearchItem ;
typedef TYPE_5__* GISTScanOpaque ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ GISTSearchItemIsHeap (TYPE_4__) ;
 TYPE_4__* getNextGISTSearchItem (TYPE_5__*) ;
 int gistScanPage (TYPE_3__*,TYPE_4__*,int ,int *,int *) ;
 int index_store_float8_orderby_distances (TYPE_3__*,int ,int ,int ) ;
 int pfree (TYPE_4__*) ;

__attribute__((used)) static bool
getNextNearest(IndexScanDesc scan)
{
 GISTScanOpaque so = (GISTScanOpaque) scan->opaque;
 bool res = 0;

 if (scan->xs_hitup)
 {

  pfree(scan->xs_hitup);
  scan->xs_hitup = ((void*)0);
 }

 do
 {
  GISTSearchItem *item = getNextGISTSearchItem(so);

  if (!item)
   break;

  if (GISTSearchItemIsHeap(*item))
  {

   scan->xs_heaptid = item->data.heap.heapPtr;
   scan->xs_recheck = item->data.heap.recheck;

   index_store_float8_orderby_distances(scan, so->orderByTypes,
             item->distances,
             item->data.heap.recheckDistances);


   if (scan->xs_want_itup)
    scan->xs_hitup = item->data.heap.recontup;
   res = 1;
  }
  else
  {

   CHECK_FOR_INTERRUPTS();

   gistScanPage(scan, item, item->distances, ((void*)0), ((void*)0));
  }

  pfree(item);
 } while (!res);

 return res;
}
