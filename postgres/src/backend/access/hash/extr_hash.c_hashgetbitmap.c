
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_8__ {size_t itemIndex; TYPE_3__* items; } ;
struct TYPE_11__ {TYPE_1__ currPos; } ;
struct TYPE_10__ {int heapTid; } ;
struct TYPE_9__ {int opaque; } ;
typedef int TIDBitmap ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__ HashScanPosItem ;
typedef TYPE_4__* HashScanOpaque ;


 int ForwardScanDirection ;
 int _hash_first (TYPE_2__*,int ) ;
 int _hash_next (TYPE_2__*,int ) ;
 int tbm_add_tuples (int *,int *,int,int) ;

int64
hashgetbitmap(IndexScanDesc scan, TIDBitmap *tbm)
{
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 bool res;
 int64 ntids = 0;
 HashScanPosItem *currItem;

 res = _hash_first(scan, ForwardScanDirection);

 while (res)
 {
  currItem = &so->currPos.items[so->currPos.itemIndex];






  tbm_add_tuples(tbm, &(currItem->heapTid), 1, 1);
  ntids++;

  res = _hash_next(scan, ForwardScanDirection);
 }

 return ntids;
}
