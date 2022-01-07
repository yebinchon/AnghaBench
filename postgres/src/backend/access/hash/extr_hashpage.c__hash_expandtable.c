
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int new_bucket; int old_bucket_flag; int new_bucket_flag; int flags; } ;
typedef TYPE_1__ xl_hash_split_allocate_page ;
typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_10__ {double hashm_ntuples; int hashm_maxbucket; int hashm_lowmask; int hashm_highmask; int hashm_ovflpoint; scalar_t__* hashm_spares; scalar_t__ hashm_ffactor; } ;
struct TYPE_9__ {int hasho_flag; int hasho_prevblkno; int hasho_bucket; int hasho_page_id; int hasho_nextblkno; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_2__* HashPageOpaque ;
typedef TYPE_3__* HashMetaPage ;
typedef int Buffer ;
typedef int Bucket ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUCKET_TO_BLKNO (TYPE_3__*,int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int HASHO_PAGE_ID ;
 scalar_t__ H_BUCKET_BEING_SPLIT (TYPE_2__*) ;
 scalar_t__ H_NEEDS_SPLIT_CLEANUP (TYPE_2__*) ;
 TYPE_3__* HashPageGetMeta (int ) ;
 int InvalidBlockNumber ;
 int IsBufferCleanupOK (int ) ;
 int LH_BUCKET_BEING_POPULATED ;
 int LH_BUCKET_BEING_SPLIT ;
 int LH_BUCKET_PAGE ;
 int LH_META_PAGE ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_HASH_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfHashSplitAllocPage ;
 int XLH_SPLIT_META_UPDATE_MASKS ;
 int XLH_SPLIT_META_UPDATE_SPLITPOINT ;
 int XLOG_HASH_SPLIT_ALLOCATE_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,char*,int) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 int _hash_alloc_buckets (int ,int ,int) ;
 int _hash_checkpage (int ,int ,int ) ;
 int _hash_dropbuf (int ,int ) ;
 int _hash_finish_split (int ,int ,int ,int,int,int,int) ;
 int _hash_get_totalbuckets (int) ;
 int _hash_getbuf_with_condlock_cleanup (int ,int ,int) ;
 int _hash_getnewbuf (int ,int ,int ) ;
 int _hash_relbuf (int ,int ) ;
 int _hash_spareindex (int) ;
 int _hash_splitbucket (int ,int ,int,int,int ,int ,int *,int,int,int) ;
 int hashbucketcleanup (int ,int,int ,int ,int *,int,int,int,int *,int *,int,int *,int *) ;

void
_hash_expandtable(Relation rel, Buffer metabuf)
{
 HashMetaPage metap;
 Bucket old_bucket;
 Bucket new_bucket;
 uint32 spare_ndx;
 BlockNumber start_oblkno;
 BlockNumber start_nblkno;
 Buffer buf_nblkno;
 Buffer buf_oblkno;
 Page opage;
 Page npage;
 HashPageOpaque oopaque;
 HashPageOpaque nopaque;
 uint32 maxbucket;
 uint32 highmask;
 uint32 lowmask;
 bool metap_update_masks = 0;
 bool metap_update_splitpoint = 0;

restart_expand:





 LockBuffer(metabuf, BUFFER_LOCK_EXCLUSIVE);

 _hash_checkpage(rel, metabuf, LH_META_PAGE);
 metap = HashPageGetMeta(BufferGetPage(metabuf));







 if (metap->hashm_ntuples <=
  (double) metap->hashm_ffactor * (metap->hashm_maxbucket + 1))
  goto fail;
 if (metap->hashm_maxbucket >= (uint32) 0x7FFFFFFE)
  goto fail;
 new_bucket = metap->hashm_maxbucket + 1;

 old_bucket = (new_bucket & metap->hashm_lowmask);

 start_oblkno = BUCKET_TO_BLKNO(metap, old_bucket);

 buf_oblkno = _hash_getbuf_with_condlock_cleanup(rel, start_oblkno, LH_BUCKET_PAGE);
 if (!buf_oblkno)
  goto fail;

 opage = BufferGetPage(buf_oblkno);
 oopaque = (HashPageOpaque) PageGetSpecialPointer(opage);
 if (H_BUCKET_BEING_SPLIT(oopaque))
 {





  maxbucket = metap->hashm_maxbucket;
  highmask = metap->hashm_highmask;
  lowmask = metap->hashm_lowmask;





  LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);
  LockBuffer(buf_oblkno, BUFFER_LOCK_UNLOCK);

  _hash_finish_split(rel, metabuf, buf_oblkno, old_bucket, maxbucket,
         highmask, lowmask);


  _hash_dropbuf(rel, buf_oblkno);

  goto restart_expand;
 }
 if (H_NEEDS_SPLIT_CLEANUP(oopaque))
 {





  maxbucket = metap->hashm_maxbucket;
  highmask = metap->hashm_highmask;
  lowmask = metap->hashm_lowmask;


  LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);

  hashbucketcleanup(rel, old_bucket, buf_oblkno, start_oblkno, ((void*)0),
        maxbucket, highmask, lowmask, ((void*)0), ((void*)0), 1,
        ((void*)0), ((void*)0));

  _hash_dropbuf(rel, buf_oblkno);

  goto restart_expand;
 }
 start_nblkno = BUCKET_TO_BLKNO(metap, new_bucket);





 spare_ndx = _hash_spareindex(new_bucket + 1);
 if (spare_ndx > metap->hashm_ovflpoint)
 {
  uint32 buckets_to_add;

  Assert(spare_ndx == metap->hashm_ovflpoint + 1);







  buckets_to_add = _hash_get_totalbuckets(spare_ndx) - new_bucket;
  if (!_hash_alloc_buckets(rel, start_nblkno, buckets_to_add))
  {

   _hash_relbuf(rel, buf_oblkno);
   goto fail;
  }
 }
 buf_nblkno = _hash_getnewbuf(rel, start_nblkno, MAIN_FORKNUM);
 if (!IsBufferCleanupOK(buf_nblkno))
 {
  _hash_relbuf(rel, buf_oblkno);
  _hash_relbuf(rel, buf_nblkno);
  goto fail;
 }







 START_CRIT_SECTION();




 metap->hashm_maxbucket = new_bucket;

 if (new_bucket > metap->hashm_highmask)
 {

  metap->hashm_lowmask = metap->hashm_highmask;
  metap->hashm_highmask = new_bucket | metap->hashm_lowmask;
  metap_update_masks = 1;
 }






 if (spare_ndx > metap->hashm_ovflpoint)
 {
  metap->hashm_spares[spare_ndx] = metap->hashm_spares[metap->hashm_ovflpoint];
  metap->hashm_ovflpoint = spare_ndx;
  metap_update_splitpoint = 1;
 }

 MarkBufferDirty(metabuf);
 maxbucket = metap->hashm_maxbucket;
 highmask = metap->hashm_highmask;
 lowmask = metap->hashm_lowmask;

 opage = BufferGetPage(buf_oblkno);
 oopaque = (HashPageOpaque) PageGetSpecialPointer(opage);







 oopaque->hasho_flag |= LH_BUCKET_BEING_SPLIT;
 oopaque->hasho_prevblkno = maxbucket;

 MarkBufferDirty(buf_oblkno);

 npage = BufferGetPage(buf_nblkno);





 nopaque = (HashPageOpaque) PageGetSpecialPointer(npage);
 nopaque->hasho_prevblkno = maxbucket;
 nopaque->hasho_nextblkno = InvalidBlockNumber;
 nopaque->hasho_bucket = new_bucket;
 nopaque->hasho_flag = LH_BUCKET_PAGE | LH_BUCKET_BEING_POPULATED;
 nopaque->hasho_page_id = HASHO_PAGE_ID;

 MarkBufferDirty(buf_nblkno);


 if (RelationNeedsWAL(rel))
 {
  xl_hash_split_allocate_page xlrec;
  XLogRecPtr recptr;

  xlrec.new_bucket = maxbucket;
  xlrec.old_bucket_flag = oopaque->hasho_flag;
  xlrec.new_bucket_flag = nopaque->hasho_flag;
  xlrec.flags = 0;

  XLogBeginInsert();

  XLogRegisterBuffer(0, buf_oblkno, REGBUF_STANDARD);
  XLogRegisterBuffer(1, buf_nblkno, REGBUF_WILL_INIT);
  XLogRegisterBuffer(2, metabuf, REGBUF_STANDARD);

  if (metap_update_masks)
  {
   xlrec.flags |= XLH_SPLIT_META_UPDATE_MASKS;
   XLogRegisterBufData(2, (char *) &metap->hashm_lowmask, sizeof(uint32));
   XLogRegisterBufData(2, (char *) &metap->hashm_highmask, sizeof(uint32));
  }

  if (metap_update_splitpoint)
  {
   xlrec.flags |= XLH_SPLIT_META_UPDATE_SPLITPOINT;
   XLogRegisterBufData(2, (char *) &metap->hashm_ovflpoint,
        sizeof(uint32));
   XLogRegisterBufData(2,
        (char *) &metap->hashm_spares[metap->hashm_ovflpoint],
        sizeof(uint32));
  }

  XLogRegisterData((char *) &xlrec, SizeOfHashSplitAllocPage);

  recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_SPLIT_ALLOCATE_PAGE);

  PageSetLSN(BufferGetPage(buf_oblkno), recptr);
  PageSetLSN(BufferGetPage(buf_nblkno), recptr);
  PageSetLSN(BufferGetPage(metabuf), recptr);
 }

 END_CRIT_SECTION();


 LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);


 _hash_splitbucket(rel, metabuf,
       old_bucket, new_bucket,
       buf_oblkno, buf_nblkno, ((void*)0),
       maxbucket, highmask, lowmask);


 _hash_dropbuf(rel, buf_oblkno);
 _hash_dropbuf(rel, buf_nblkno);

 return;


fail:


 LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);
}
