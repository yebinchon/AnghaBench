
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* offnum; } ;
typedef TYPE_2__ xl_heap_inplace ;
typedef scalar_t__ uint32 ;
typedef int XLogRecPtr ;
struct TYPE_10__ {scalar_t__ t_len; int t_self; TYPE_1__* t_data; } ;
struct TYPE_9__ {scalar_t__ t_hoff; } ;
struct TYPE_7__ {scalar_t__ t_hoff; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int * ItemId ;
typedef TYPE_3__* HeapTupleHeader ;
typedef TYPE_4__* HeapTuple ;
typedef int Buffer ;


 int BUFFER_LOCK_EXCLUSIVE ;
 scalar_t__ BufferGetPage (int ) ;
 int CacheInvalidateHeapTuple (int ,TYPE_4__*,int *) ;
 int END_CRIT_SECTION () ;
 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERROR ;
 int IsBootstrapProcessingMode () ;
 scalar_t__ IsInParallelMode () ;
 scalar_t__ ItemIdGetLength (int *) ;
 int ItemIdIsNormal (int *) ;
 int ItemPointerGetBlockNumber (int *) ;
 void* ItemPointerGetOffsetNumber (int *) ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetItem (scalar_t__,int *) ;
 int * PageGetItemId (scalar_t__,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int REGBUF_STANDARD ;
 int RM_HEAP_ID ;
 int ReadBuffer (int ,int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfHeapInplace ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_HEAP_INPLACE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,scalar_t__) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int memcpy (char*,char*,scalar_t__) ;

void
heap_inplace_update(Relation relation, HeapTuple tuple)
{
 Buffer buffer;
 Page page;
 OffsetNumber offnum;
 ItemId lp = ((void*)0);
 HeapTupleHeader htup;
 uint32 oldlen;
 uint32 newlen;







 if (IsInParallelMode())
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_STATE),
     errmsg("cannot update tuples during a parallel operation")));

 buffer = ReadBuffer(relation, ItemPointerGetBlockNumber(&(tuple->t_self)));
 LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
 page = (Page) BufferGetPage(buffer);

 offnum = ItemPointerGetOffsetNumber(&(tuple->t_self));
 if (PageGetMaxOffsetNumber(page) >= offnum)
  lp = PageGetItemId(page, offnum);

 if (PageGetMaxOffsetNumber(page) < offnum || !ItemIdIsNormal(lp))
  elog(ERROR, "invalid lp");

 htup = (HeapTupleHeader) PageGetItem(page, lp);

 oldlen = ItemIdGetLength(lp) - htup->t_hoff;
 newlen = tuple->t_len - tuple->t_data->t_hoff;
 if (oldlen != newlen || htup->t_hoff != tuple->t_data->t_hoff)
  elog(ERROR, "wrong tuple length");


 START_CRIT_SECTION();

 memcpy((char *) htup + htup->t_hoff,
     (char *) tuple->t_data + tuple->t_data->t_hoff,
     newlen);

 MarkBufferDirty(buffer);


 if (RelationNeedsWAL(relation))
 {
  xl_heap_inplace xlrec;
  XLogRecPtr recptr;

  xlrec.offnum = ItemPointerGetOffsetNumber(&tuple->t_self);

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfHeapInplace);

  XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);
  XLogRegisterBufData(0, (char *) htup + htup->t_hoff, newlen);



  recptr = XLogInsert(RM_HEAP_ID, XLOG_HEAP_INPLACE);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();

 UnlockReleaseBuffer(buffer);







 if (!IsBootstrapProcessingMode())
  CacheInvalidateHeapTuple(relation, tuple, ((void*)0));
}
