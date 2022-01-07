
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_11__ {scalar_t__ itemIndex; scalar_t__ lastItem; TYPE_1__* items; } ;
struct TYPE_13__ {scalar_t__ numArrayKeys; TYPE_2__ currPos; } ;
struct TYPE_12__ {int xs_heaptid; int opaque; } ;
struct TYPE_10__ {int heapTid; } ;
typedef int TIDBitmap ;
typedef int * ItemPointer ;
typedef TYPE_3__* IndexScanDesc ;
typedef TYPE_4__* BTScanOpaque ;


 int ForwardScanDirection ;
 scalar_t__ _bt_advance_array_keys (TYPE_3__*,int ) ;
 scalar_t__ _bt_first (TYPE_3__*,int ) ;
 int _bt_next (TYPE_3__*,int ) ;
 int _bt_start_array_keys (TYPE_3__*,int ) ;
 int tbm_add_tuples (int *,int *,int,int) ;

int64
btgetbitmap(IndexScanDesc scan, TIDBitmap *tbm)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 int64 ntids = 0;
 ItemPointer heapTid;




 if (so->numArrayKeys)
 {

  if (so->numArrayKeys < 0)
   return ntids;

  _bt_start_array_keys(scan, ForwardScanDirection);
 }


 do
 {

  if (_bt_first(scan, ForwardScanDirection))
  {

   heapTid = &scan->xs_heaptid;
   tbm_add_tuples(tbm, heapTid, 1, 0);
   ntids++;

   for (;;)
   {




    if (++so->currPos.itemIndex > so->currPos.lastItem)
    {

     if (!_bt_next(scan, ForwardScanDirection))
      break;
    }


    heapTid = &so->currPos.items[so->currPos.itemIndex].heapTid;
    tbm_add_tuples(tbm, heapTid, 1, 0);
    ntids++;
   }
  }

 } while (so->numArrayKeys && _bt_advance_array_keys(scan, ForwardScanDirection));

 return ntids;
}
