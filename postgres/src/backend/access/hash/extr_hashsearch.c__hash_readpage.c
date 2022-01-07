
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_15__ {void* hasho_nextblkno; void* hasho_prevblkno; } ;
struct TYPE_12__ {scalar_t__ buf; scalar_t__ firstItem; scalar_t__ lastItem; void* nextPage; void* prevPage; scalar_t__ itemIndex; void* currPage; } ;
struct TYPE_14__ {scalar_t__ numKilled; scalar_t__ hashso_bucket_buf; scalar_t__ hashso_split_bucket_buf; TYPE_1__ currPos; int hashso_sk_hash; } ;
struct TYPE_13__ {int opaque; int indexRelation; } ;
typedef int ScanDirection ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__* HashScanOpaque ;
typedef TYPE_4__* HashPageOpaque ;
typedef void* Buffer ;
typedef void* BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_UNLOCK ;
 void* BufferGetBlockNumber (void*) ;
 int BufferGetPage (void*) ;
 int BufferIsValid (void*) ;
 void* InvalidBlockNumber ;
 scalar_t__ InvalidBuffer ;
 int LH_BUCKET_PAGE ;
 int LH_OVERFLOW_PAGE ;
 int LockBuffer (scalar_t__,int ) ;
 scalar_t__ MaxIndexTuplesPerPage ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 int _hash_binsearch (int ,int ) ;
 int _hash_binsearch_last (int ,int ) ;
 int _hash_checkpage (int ,void*,int) ;
 int _hash_kill_items (TYPE_2__*) ;
 scalar_t__ _hash_load_qualified_items (TYPE_2__*,int ,int ,int ) ;
 int _hash_readnext (TYPE_2__*,void**,int *,TYPE_4__**) ;
 int _hash_readprev (TYPE_2__*,void**,int *,TYPE_4__**) ;
 int _hash_relbuf (int ,scalar_t__) ;

__attribute__((used)) static bool
_hash_readpage(IndexScanDesc scan, Buffer *bufP, ScanDirection dir)
{
 Relation rel = scan->indexRelation;
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 Buffer buf;
 Page page;
 HashPageOpaque opaque;
 OffsetNumber offnum;
 uint16 itemIndex;

 buf = *bufP;
 Assert(BufferIsValid(buf));
 _hash_checkpage(rel, buf, LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
 page = BufferGetPage(buf);
 opaque = (HashPageOpaque) PageGetSpecialPointer(page);

 so->currPos.buf = buf;
 so->currPos.currPage = BufferGetBlockNumber(buf);

 if (ScanDirectionIsForward(dir))
 {
  BlockNumber prev_blkno = InvalidBlockNumber;

  for (;;)
  {

   offnum = _hash_binsearch(page, so->hashso_sk_hash);

   itemIndex = _hash_load_qualified_items(scan, page, offnum, dir);

   if (itemIndex != 0)
    break;






   if (so->numKilled > 0)
    _hash_kill_items(scan);





   if (so->currPos.buf == so->hashso_bucket_buf ||
    so->currPos.buf == so->hashso_split_bucket_buf)
    prev_blkno = InvalidBlockNumber;
   else
    prev_blkno = opaque->hasho_prevblkno;

   _hash_readnext(scan, &buf, &page, &opaque);
   if (BufferIsValid(buf))
   {
    so->currPos.buf = buf;
    so->currPos.currPage = BufferGetBlockNumber(buf);
   }
   else
   {
    so->currPos.prevPage = prev_blkno;
    so->currPos.nextPage = InvalidBlockNumber;
    so->currPos.buf = buf;
    return 0;
   }
  }

  so->currPos.firstItem = 0;
  so->currPos.lastItem = itemIndex - 1;
  so->currPos.itemIndex = 0;
 }
 else
 {
  BlockNumber next_blkno = InvalidBlockNumber;

  for (;;)
  {

   offnum = _hash_binsearch_last(page, so->hashso_sk_hash);

   itemIndex = _hash_load_qualified_items(scan, page, offnum, dir);

   if (itemIndex != MaxIndexTuplesPerPage)
    break;






   if (so->numKilled > 0)
    _hash_kill_items(scan);

   if (so->currPos.buf == so->hashso_bucket_buf ||
    so->currPos.buf == so->hashso_split_bucket_buf)
    next_blkno = opaque->hasho_nextblkno;

   _hash_readprev(scan, &buf, &page, &opaque);
   if (BufferIsValid(buf))
   {
    so->currPos.buf = buf;
    so->currPos.currPage = BufferGetBlockNumber(buf);
   }
   else
   {
    so->currPos.prevPage = InvalidBlockNumber;
    so->currPos.nextPage = next_blkno;
    so->currPos.buf = buf;
    return 0;
   }
  }

  so->currPos.firstItem = itemIndex;
  so->currPos.lastItem = MaxIndexTuplesPerPage - 1;
  so->currPos.itemIndex = MaxIndexTuplesPerPage - 1;
 }

 if (so->currPos.buf == so->hashso_bucket_buf ||
  so->currPos.buf == so->hashso_split_bucket_buf)
 {
  so->currPos.prevPage = InvalidBlockNumber;
  so->currPos.nextPage = opaque->hasho_nextblkno;
  LockBuffer(so->currPos.buf, BUFFER_LOCK_UNLOCK);
 }
 else
 {
  so->currPos.prevPage = opaque->hasho_prevblkno;
  so->currPos.nextPage = opaque->hasho_nextblkno;
  _hash_relbuf(rel, so->currPos.buf);
  so->currPos.buf = InvalidBuffer;
 }

 Assert(so->currPos.firstItem <= so->currPos.lastItem);
 return 1;
}
