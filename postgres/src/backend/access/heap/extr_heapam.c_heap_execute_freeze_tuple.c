
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int frzflags; int t_infomask2; int t_infomask; int xmax; } ;
typedef TYPE_1__ xl_heap_freeze_tuple ;
struct TYPE_8__ {int t_infomask2; int t_infomask; } ;
typedef TYPE_2__* HeapTupleHeader ;


 int FrozenTransactionId ;
 int HeapTupleHeaderSetXmax (TYPE_2__*,int ) ;
 int HeapTupleHeaderSetXvac (TYPE_2__*,int ) ;
 int InvalidTransactionId ;
 int XLH_FREEZE_XVAC ;
 int XLH_INVALID_XVAC ;

void
heap_execute_freeze_tuple(HeapTupleHeader tuple, xl_heap_freeze_tuple *frz)
{
 HeapTupleHeaderSetXmax(tuple, frz->xmax);

 if (frz->frzflags & XLH_FREEZE_XVAC)
  HeapTupleHeaderSetXvac(tuple, FrozenTransactionId);

 if (frz->frzflags & XLH_INVALID_XVAC)
  HeapTupleHeaderSetXvac(tuple, InvalidTransactionId);

 tuple->t_infomask = frz->t_infomask;
 tuple->t_infomask2 = frz->t_infomask2;
}
