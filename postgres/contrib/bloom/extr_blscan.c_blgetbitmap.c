
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_10__ {int bloomLength; } ;
struct TYPE_15__ {TYPE_1__ opts; } ;
struct TYPE_14__ {int* sign; TYPE_6__ state; } ;
struct TYPE_13__ {int* sign; int heapPtr; } ;
struct TYPE_12__ {int numberOfKeys; int indexRelation; int xs_snapshot; TYPE_2__* keyData; int opaque; } ;
struct TYPE_11__ {int sk_flags; scalar_t__ sk_attno; int sk_argument; } ;
typedef int TIDBitmap ;
typedef TYPE_2__* ScanKey ;
typedef int Page ;
typedef int OffsetNumber ;
typedef TYPE_3__* IndexScanDesc ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef TYPE_4__ BloomTuple ;
typedef int BloomSignatureWord ;
typedef TYPE_5__* BloomScanOpaque ;
typedef scalar_t__ BlockNumber ;


 int BAS_BULKREAD ;
 scalar_t__ BLOOM_HEAD_BLKNO ;
 int BUFFER_LOCK_SHARE ;
 int BloomPageGetMaxOffset (int ) ;
 TYPE_4__* BloomPageGetTuple (TYPE_6__*,int ,int) ;
 int BloomPageIsDeleted (int ) ;
 int BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int FreeAccessStrategy (int ) ;
 int GetAccessStrategy (int ) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int PageIsNew (int ) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int SK_ISNULL ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int* palloc0 (int) ;
 int pfree (int*) ;
 int signValue (TYPE_6__*,int*,int ,scalar_t__) ;
 int tbm_add_tuples (int *,int *,int,int) ;

int64
blgetbitmap(IndexScanDesc scan, TIDBitmap *tbm)
{
 int64 ntids = 0;
 BlockNumber blkno = BLOOM_HEAD_BLKNO,
    npages;
 int i;
 BufferAccessStrategy bas;
 BloomScanOpaque so = (BloomScanOpaque) scan->opaque;

 if (so->sign == ((void*)0))
 {

  ScanKey skey = scan->keyData;

  so->sign = palloc0(sizeof(BloomSignatureWord) * so->state.opts.bloomLength);

  for (i = 0; i < scan->numberOfKeys; i++)
  {




   if (skey->sk_flags & SK_ISNULL)
   {
    pfree(so->sign);
    so->sign = ((void*)0);
    return 0;
   }


   signValue(&so->state, so->sign, skey->sk_argument,
       skey->sk_attno - 1);

   skey++;
  }
 }





 bas = GetAccessStrategy(BAS_BULKREAD);
 npages = RelationGetNumberOfBlocks(scan->indexRelation);

 for (blkno = BLOOM_HEAD_BLKNO; blkno < npages; blkno++)
 {
  Buffer buffer;
  Page page;

  buffer = ReadBufferExtended(scan->indexRelation, MAIN_FORKNUM,
         blkno, RBM_NORMAL, bas);

  LockBuffer(buffer, BUFFER_LOCK_SHARE);
  page = BufferGetPage(buffer);
  TestForOldSnapshot(scan->xs_snapshot, scan->indexRelation, page);

  if (!PageIsNew(page) && !BloomPageIsDeleted(page))
  {
   OffsetNumber offset,
      maxOffset = BloomPageGetMaxOffset(page);

   for (offset = 1; offset <= maxOffset; offset++)
   {
    BloomTuple *itup = BloomPageGetTuple(&so->state, page, offset);
    bool res = 1;


    for (i = 0; i < so->state.opts.bloomLength; i++)
    {
     if ((itup->sign[i] & so->sign[i]) != so->sign[i])
     {
      res = 0;
      break;
     }
    }


    if (res)
    {
     tbm_add_tuples(tbm, &itup->heapPtr, 1, 1);
     ntids++;
    }
   }
  }

  UnlockReleaseBuffer(buffer);
  CHECK_FOR_INTERRUPTS();
 }
 FreeAccessStrategy(bas);

 return ntids;
}
