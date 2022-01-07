
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int t_self; int t_len; scalar_t__ t_data; } ;
struct TYPE_4__ {int t_ctid; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef int Item ;
typedef TYPE_1__* HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;
typedef int Buffer ;


 int Assert (int) ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ HeapTupleHeaderIsSpeculative (scalar_t__) ;
 scalar_t__ InvalidOffsetNumber ;
 int ItemPointerSet (int *,int ,scalar_t__) ;
 int PANIC ;
 scalar_t__ PageAddItem (int ,int ,int ,scalar_t__,int,int) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 int elog (int ,char*) ;

void
RelationPutHeapTuple(Relation relation,
      Buffer buffer,
      HeapTuple tuple,
      bool token)
{
 Page pageHeader;
 OffsetNumber offnum;





 Assert(!token || HeapTupleHeaderIsSpeculative(tuple->t_data));


 pageHeader = BufferGetPage(buffer);

 offnum = PageAddItem(pageHeader, (Item) tuple->t_data,
       tuple->t_len, InvalidOffsetNumber, 0, 1);

 if (offnum == InvalidOffsetNumber)
  elog(PANIC, "failed to add tuple to page");


 ItemPointerSet(&(tuple->t_self), BufferGetBlockNumber(buffer), offnum);






 if (!token)
 {
  ItemId itemId = PageGetItemId(pageHeader, offnum);
  HeapTupleHeader item = (HeapTupleHeader) PageGetItem(pageHeader, itemId);

  item->t_ctid = tuple->t_self;
 }
}
