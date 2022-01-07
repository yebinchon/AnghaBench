
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ magic; } ;
typedef TYPE_1__ sequence_magic ;
struct TYPE_10__ {TYPE_2__* t_data; int t_len; } ;
struct TYPE_9__ {int t_infomask; } ;
typedef int Relation ;
typedef int Page ;
typedef int ItemId ;
typedef TYPE_2__* HeapTupleHeader ;
typedef TYPE_3__* HeapTuple ;
typedef scalar_t__ Form_pg_sequence_data ;
typedef int Buffer ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BufferGetPage (int ) ;
 int ERROR ;
 int FirstOffsetNumber ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_INVALID ;
 int HEAP_XMAX_IS_MULTI ;
 scalar_t__ HeapTupleHeaderGetRawXmax (TYPE_2__*) ;
 int HeapTupleHeaderSetXmax (TYPE_2__*,scalar_t__) ;
 scalar_t__ InvalidTransactionId ;
 int ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirtyHint (int ,int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int ReadBuffer (int ,int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ SEQ_MAGIC ;
 int elog (int ,char*,int ,scalar_t__) ;

__attribute__((used)) static Form_pg_sequence_data
read_seq_tuple(Relation rel, Buffer *buf, HeapTuple seqdatatuple)
{
 Page page;
 ItemId lp;
 sequence_magic *sm;
 Form_pg_sequence_data seq;

 *buf = ReadBuffer(rel, 0);
 LockBuffer(*buf, BUFFER_LOCK_EXCLUSIVE);

 page = BufferGetPage(*buf);
 sm = (sequence_magic *) PageGetSpecialPointer(page);

 if (sm->magic != SEQ_MAGIC)
  elog(ERROR, "bad magic number in sequence \"%s\": %08X",
    RelationGetRelationName(rel), sm->magic);

 lp = PageGetItemId(page, FirstOffsetNumber);
 Assert(ItemIdIsNormal(lp));


 seqdatatuple->t_data = (HeapTupleHeader) PageGetItem(page, lp);
 seqdatatuple->t_len = ItemIdGetLength(lp);
 Assert(!(seqdatatuple->t_data->t_infomask & HEAP_XMAX_IS_MULTI));
 if (HeapTupleHeaderGetRawXmax(seqdatatuple->t_data) != InvalidTransactionId)
 {
  HeapTupleHeaderSetXmax(seqdatatuple->t_data, InvalidTransactionId);
  seqdatatuple->t_data->t_infomask &= ~HEAP_XMAX_COMMITTED;
  seqdatatuple->t_data->t_infomask |= HEAP_XMAX_INVALID;
  MarkBufferDirtyHint(*buf, 1);
 }

 seq = (Form_pg_sequence_data) GETSTRUCT(seqdatatuple);

 return seq;
}
