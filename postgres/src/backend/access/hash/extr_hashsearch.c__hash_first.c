
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_28__ {scalar_t__ hasho_bucket; int hasho_nextblkno; } ;
struct TYPE_22__ {size_t itemIndex; TYPE_5__* items; void* buf; } ;
struct TYPE_27__ {int hashso_buc_populated; TYPE_1__ currPos; int hashso_buc_split; void* hashso_split_bucket_buf; void* hashso_bucket_buf; int hashso_sk_hash; } ;
struct TYPE_26__ {int heapTid; } ;
struct TYPE_25__ {int numberOfKeys; int xs_heaptid; int xs_snapshot; TYPE_2__* keyData; int opaque; TYPE_3__* indexRelation; } ;
struct TYPE_24__ {scalar_t__* rd_opcintype; } ;
struct TYPE_23__ {int sk_attno; scalar_t__ sk_strategy; int sk_flags; scalar_t__ sk_subtype; int sk_argument; } ;
typedef TYPE_2__* ScanKey ;
typedef int ScanDirection ;
typedef TYPE_3__* Relation ;
typedef int Page ;
typedef TYPE_4__* IndexScanDesc ;
typedef TYPE_5__ HashScanPosItem ;
typedef TYPE_6__* HashScanOpaque ;
typedef TYPE_7__* HashPageOpaque ;
typedef void* Buffer ;
typedef scalar_t__ Bucket ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BlockNumberIsValid (int ) ;
 int BufferGetBlockNumber (void*) ;
 int BufferGetPage (void*) ;
 int BufferIsInvalid (void*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int HASH_READ ;
 scalar_t__ HTEqualStrategyNumber ;
 scalar_t__ H_BUCKET_BEING_POPULATED (TYPE_7__*) ;
 void* InvalidBuffer ;
 scalar_t__ InvalidOid ;
 int LH_BUCKET_PAGE ;
 int LockBuffer (void*,int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PredicateLockPage (TYPE_3__*,int ,int ) ;
 int SK_ISNULL ;
 scalar_t__ ScanDirectionIsBackward (int ) ;
 int TestForOldSnapshot (int ,TYPE_3__*,int ) ;
 int _hash_datum2hashkey (TYPE_3__*,int ) ;
 int _hash_datum2hashkey_type (TYPE_3__*,int ,scalar_t__) ;
 int _hash_dropbuf (TYPE_3__*,void*) ;
 int _hash_get_oldblock_from_newbucket (TYPE_3__*,scalar_t__) ;
 void* _hash_getbucketbuf_from_hashkey (TYPE_3__*,int ,int ,int *) ;
 void* _hash_getbuf (TYPE_3__*,int ,int ,int ) ;
 int _hash_readnext (TYPE_4__*,void**,int *,TYPE_7__**) ;
 int _hash_readpage (TYPE_4__*,void**,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pgstat_count_index_scan (TYPE_3__*) ;

bool
_hash_first(IndexScanDesc scan, ScanDirection dir)
{
 Relation rel = scan->indexRelation;
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 ScanKey cur;
 uint32 hashkey;
 Bucket bucket;
 Buffer buf;
 Page page;
 HashPageOpaque opaque;
 HashScanPosItem *currItem;

 pgstat_count_index_scan(rel);







 if (scan->numberOfKeys < 1)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("hash indexes do not support whole-index scans")));


 cur = &scan->keyData[0];


 Assert(cur->sk_attno == 1);

 Assert(cur->sk_strategy == HTEqualStrategyNumber);





 if (cur->sk_flags & SK_ISNULL)
  return 0;
 if (cur->sk_subtype == rel->rd_opcintype[0] ||
  cur->sk_subtype == InvalidOid)
  hashkey = _hash_datum2hashkey(rel, cur->sk_argument);
 else
  hashkey = _hash_datum2hashkey_type(rel, cur->sk_argument,
             cur->sk_subtype);

 so->hashso_sk_hash = hashkey;

 buf = _hash_getbucketbuf_from_hashkey(rel, hashkey, HASH_READ, ((void*)0));
 PredicateLockPage(rel, BufferGetBlockNumber(buf), scan->xs_snapshot);
 page = BufferGetPage(buf);
 TestForOldSnapshot(scan->xs_snapshot, rel, page);
 opaque = (HashPageOpaque) PageGetSpecialPointer(page);
 bucket = opaque->hasho_bucket;

 so->hashso_bucket_buf = buf;
 if (H_BUCKET_BEING_POPULATED(opaque))
 {
  BlockNumber old_blkno;
  Buffer old_buf;

  old_blkno = _hash_get_oldblock_from_newbucket(rel, bucket);





  LockBuffer(buf, BUFFER_LOCK_UNLOCK);

  old_buf = _hash_getbuf(rel, old_blkno, HASH_READ, LH_BUCKET_PAGE);
  TestForOldSnapshot(scan->xs_snapshot, rel, BufferGetPage(old_buf));





  so->hashso_split_bucket_buf = old_buf;
  LockBuffer(old_buf, BUFFER_LOCK_UNLOCK);

  LockBuffer(buf, BUFFER_LOCK_SHARE);
  page = BufferGetPage(buf);
  opaque = (HashPageOpaque) PageGetSpecialPointer(page);
  Assert(opaque->hasho_bucket == bucket);

  if (H_BUCKET_BEING_POPULATED(opaque))
   so->hashso_buc_populated = 1;
  else
  {
   _hash_dropbuf(rel, so->hashso_split_bucket_buf);
   so->hashso_split_bucket_buf = InvalidBuffer;
  }
 }


 if (ScanDirectionIsBackward(dir))
 {




  while (BlockNumberIsValid(opaque->hasho_nextblkno) ||
      (so->hashso_buc_populated && !so->hashso_buc_split))
   _hash_readnext(scan, &buf, &page, &opaque);
 }


 Assert(BufferIsInvalid(so->currPos.buf));
 so->currPos.buf = buf;


 if (!_hash_readpage(scan, &buf, dir))
  return 0;


 currItem = &so->currPos.items[so->currPos.itemIndex];
 scan->xs_heaptid = currItem->heapTid;


 return 1;
}
