
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {double ntuples; } ;
typedef TYPE_1__ xl_hash_update_meta_page ;
typedef int XLogRecPtr ;
struct TYPE_18__ {scalar_t__ hashm_maxbucket; double hashm_ntuples; int hashm_lowmask; int hashm_highmask; } ;
struct TYPE_17__ {scalar_t__ hasho_prevblkno; } ;
struct TYPE_16__ {int estimated_count; double num_index_tuples; double tuples_removed; } ;
struct TYPE_15__ {int strategy; int index; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef TYPE_3__ IndexBulkDeleteResult ;
typedef int IndexBulkDeleteCallback ;
typedef TYPE_4__* HashPageOpaque ;
typedef TYPE_5__* HashMetaPage ;
typedef int Buffer ;
typedef scalar_t__ Bucket ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUCKET_TO_BLKNO (TYPE_5__*,scalar_t__) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsInvalid (int ) ;
 int END_CRIT_SECTION () ;
 int HASH_METAPAGE ;
 int HASH_NOLOCK ;
 int H_BUCKET_BEING_SPLIT (TYPE_4__*) ;
 scalar_t__ H_NEEDS_SPLIT_CLEANUP (TYPE_4__*) ;
 TYPE_5__* HashPageGetMeta (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int LH_BUCKET_PAGE ;
 int LH_META_PAGE ;
 int LockBuffer (int ,int ) ;
 int LockBufferForCleanup (int ) ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageSetLSN (int ,int ) ;
 int RBM_NORMAL ;
 int REGBUF_STANDARD ;
 int RM_HASH_ID ;
 int ReadBufferExtended (int ,int ,int ,int ,int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfHashUpdateMetaPage ;
 int XLOG_HASH_UPDATE_META_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 int _hash_checkpage (int ,int ,int ) ;
 int _hash_dropbuf (int ,int ) ;
 int _hash_getbuf (int ,int ,int ,int ) ;
 TYPE_5__* _hash_getcachedmetap (int ,int *,int) ;
 int _hash_relbuf (int ,int ) ;
 int hashbucketcleanup (int ,scalar_t__,int ,int ,int ,scalar_t__,int ,int ,double*,double*,int,int ,void*) ;
 scalar_t__ palloc0 (int) ;

IndexBulkDeleteResult *
hashbulkdelete(IndexVacuumInfo *info, IndexBulkDeleteResult *stats,
      IndexBulkDeleteCallback callback, void *callback_state)
{
 Relation rel = info->index;
 double tuples_removed;
 double num_index_tuples;
 double orig_ntuples;
 Bucket orig_maxbucket;
 Bucket cur_maxbucket;
 Bucket cur_bucket;
 Buffer metabuf = InvalidBuffer;
 HashMetaPage metap;
 HashMetaPage cachedmetap;

 tuples_removed = 0;
 num_index_tuples = 0;







 cachedmetap = _hash_getcachedmetap(rel, &metabuf, 0);
 Assert(cachedmetap != ((void*)0));

 orig_maxbucket = cachedmetap->hashm_maxbucket;
 orig_ntuples = cachedmetap->hashm_ntuples;


 cur_bucket = 0;
 cur_maxbucket = orig_maxbucket;

loop_top:
 while (cur_bucket <= cur_maxbucket)
 {
  BlockNumber bucket_blkno;
  BlockNumber blkno;
  Buffer bucket_buf;
  Buffer buf;
  HashPageOpaque bucket_opaque;
  Page page;
  bool split_cleanup = 0;


  bucket_blkno = BUCKET_TO_BLKNO(cachedmetap, cur_bucket);

  blkno = bucket_blkno;





  buf = ReadBufferExtended(rel, MAIN_FORKNUM, blkno, RBM_NORMAL, info->strategy);
  LockBufferForCleanup(buf);
  _hash_checkpage(rel, buf, LH_BUCKET_PAGE);

  page = BufferGetPage(buf);
  bucket_opaque = (HashPageOpaque) PageGetSpecialPointer(page);






  if (!H_BUCKET_BEING_SPLIT(bucket_opaque) &&
   H_NEEDS_SPLIT_CLEANUP(bucket_opaque))
  {
   split_cleanup = 1;
   Assert(bucket_opaque->hasho_prevblkno != InvalidBlockNumber);
   if (bucket_opaque->hasho_prevblkno > cachedmetap->hashm_maxbucket)
   {
    cachedmetap = _hash_getcachedmetap(rel, &metabuf, 1);
    Assert(cachedmetap != ((void*)0));
   }
  }

  bucket_buf = buf;

  hashbucketcleanup(rel, cur_bucket, bucket_buf, blkno, info->strategy,
        cachedmetap->hashm_maxbucket,
        cachedmetap->hashm_highmask,
        cachedmetap->hashm_lowmask, &tuples_removed,
        &num_index_tuples, split_cleanup,
        callback, callback_state);

  _hash_dropbuf(rel, bucket_buf);


  cur_bucket++;
 }

 if (BufferIsInvalid(metabuf))
  metabuf = _hash_getbuf(rel, HASH_METAPAGE, HASH_NOLOCK, LH_META_PAGE);


 LockBuffer(metabuf, BUFFER_LOCK_EXCLUSIVE);
 metap = HashPageGetMeta(BufferGetPage(metabuf));

 if (cur_maxbucket != metap->hashm_maxbucket)
 {

  LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);
  cachedmetap = _hash_getcachedmetap(rel, &metabuf, 1);
  Assert(cachedmetap != ((void*)0));
  cur_maxbucket = cachedmetap->hashm_maxbucket;
  goto loop_top;
 }


 START_CRIT_SECTION();

 if (orig_maxbucket == metap->hashm_maxbucket &&
  orig_ntuples == metap->hashm_ntuples)
 {




  metap->hashm_ntuples = num_index_tuples;
 }
 else
 {






  if (metap->hashm_ntuples > tuples_removed)
   metap->hashm_ntuples -= tuples_removed;
  else
   metap->hashm_ntuples = 0;
  num_index_tuples = metap->hashm_ntuples;
 }

 MarkBufferDirty(metabuf);


 if (RelationNeedsWAL(rel))
 {
  xl_hash_update_meta_page xlrec;
  XLogRecPtr recptr;

  xlrec.ntuples = metap->hashm_ntuples;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfHashUpdateMetaPage);

  XLogRegisterBuffer(0, metabuf, REGBUF_STANDARD);

  recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_UPDATE_META_PAGE);
  PageSetLSN(BufferGetPage(metabuf), recptr);
 }

 END_CRIT_SECTION();

 _hash_relbuf(rel, metabuf);


 if (stats == ((void*)0))
  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));
 stats->estimated_count = 0;
 stats->num_index_tuples = num_index_tuples;
 stats->tuples_removed += tuples_removed;


 return stats;
}
