
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int offnum; } ;
typedef TYPE_1__ xl_hash_insert ;
typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int hashm_maxbucket; int hashm_ntuples; scalar_t__ hashm_ffactor; int hashm_lowmask; int hashm_highmask; } ;
struct TYPE_9__ {scalar_t__ hasho_bucket; int hasho_flag; int hasho_nextblkno; } ;
typedef scalar_t__ Size ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_2__* HashPageOpaque ;
typedef TYPE_3__* HashMetaPage ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ Bucket ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BlockNumberIsValid (int ) ;
 int BufferGetPage (scalar_t__) ;
 int CheckForSerializableConflictIn (int ,int *,scalar_t__) ;
 int END_CRIT_SECTION () ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int HASH_METAPAGE ;
 int HASH_NOLOCK ;
 int HASH_WRITE ;
 scalar_t__ H_BUCKET_BEING_SPLIT (TYPE_2__*) ;
 scalar_t__ H_HAS_DEAD_TUPLES (TYPE_2__*) ;
 scalar_t__ HashMaxItemSize (int ) ;
 TYPE_3__* HashPageGetMeta (int ) ;
 scalar_t__ IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ IsBufferCleanupOK (scalar_t__) ;
 int LH_META_PAGE ;
 int LH_OVERFLOW_PAGE ;
 int LH_PAGE_TYPE ;
 int LockBuffer (scalar_t__,int ) ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int MarkBufferDirty (scalar_t__) ;
 scalar_t__ PageGetFreeSpace (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_HASH_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfHashInsert ;
 int XLOG_HASH_INSERT ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,scalar_t__) ;
 int XLogRegisterBuffer (int,scalar_t__,int ) ;
 int XLogRegisterData (char*,int ) ;
 scalar_t__ _hash_addovflpage (int ,scalar_t__,scalar_t__,int) ;
 int _hash_dropbuf (int ,scalar_t__) ;
 int _hash_expandtable (int ,scalar_t__) ;
 int _hash_finish_split (int ,scalar_t__,scalar_t__,scalar_t__,int,int ,int ) ;
 int _hash_get_indextuple_hashkey (scalar_t__) ;
 scalar_t__ _hash_getbucketbuf_from_hashkey (int ,int ,int ,TYPE_3__**) ;
 scalar_t__ _hash_getbuf (int ,int ,int ,int) ;
 int _hash_pgaddtup (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int _hash_relbuf (int ,scalar_t__) ;
 int _hash_vacuum_one_page (int ,int ,scalar_t__,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,scalar_t__,scalar_t__) ;

void
_hash_doinsert(Relation rel, IndexTuple itup, Relation heapRel)
{
 Buffer buf = InvalidBuffer;
 Buffer bucket_buf;
 Buffer metabuf;
 HashMetaPage metap;
 HashMetaPage usedmetap = ((void*)0);
 Page metapage;
 Page page;
 HashPageOpaque pageopaque;
 Size itemsz;
 bool do_expand;
 uint32 hashkey;
 Bucket bucket;
 OffsetNumber itup_off;




 hashkey = _hash_get_indextuple_hashkey(itup);


 itemsz = IndexTupleSize(itup);
 itemsz = MAXALIGN(itemsz);


restart_insert:






 metabuf = _hash_getbuf(rel, HASH_METAPAGE, HASH_NOLOCK, LH_META_PAGE);
 metapage = BufferGetPage(metabuf);
 if (itemsz > HashMaxItemSize(metapage))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("index row size %zu exceeds hash maximum %zu",
      itemsz, HashMaxItemSize(metapage)),
     errhint("Values larger than a buffer page cannot be indexed.")));


 buf = _hash_getbucketbuf_from_hashkey(rel, hashkey, HASH_WRITE,
            &usedmetap);
 Assert(usedmetap != ((void*)0));

 CheckForSerializableConflictIn(rel, ((void*)0), buf);


 bucket_buf = buf;

 page = BufferGetPage(buf);
 pageopaque = (HashPageOpaque) PageGetSpecialPointer(page);
 bucket = pageopaque->hasho_bucket;
 if (H_BUCKET_BEING_SPLIT(pageopaque) && IsBufferCleanupOK(buf))
 {

  LockBuffer(buf, BUFFER_LOCK_UNLOCK);

  _hash_finish_split(rel, metabuf, buf, bucket,
         usedmetap->hashm_maxbucket,
         usedmetap->hashm_highmask,
         usedmetap->hashm_lowmask);


  _hash_dropbuf(rel, buf);
  _hash_dropbuf(rel, metabuf);
  goto restart_insert;
 }


 while (PageGetFreeSpace(page) < itemsz)
 {
  BlockNumber nextblkno;






  if (H_HAS_DEAD_TUPLES(pageopaque))
  {

   if (IsBufferCleanupOK(buf))
   {
    _hash_vacuum_one_page(rel, heapRel, metabuf, buf);

    if (PageGetFreeSpace(page) >= itemsz)
     break;
   }
  }




  nextblkno = pageopaque->hasho_nextblkno;

  if (BlockNumberIsValid(nextblkno))
  {







   if (buf != bucket_buf)
    _hash_relbuf(rel, buf);
   else
    LockBuffer(buf, BUFFER_LOCK_UNLOCK);
   buf = _hash_getbuf(rel, nextblkno, HASH_WRITE, LH_OVERFLOW_PAGE);
   page = BufferGetPage(buf);
  }
  else
  {






   LockBuffer(buf, BUFFER_LOCK_UNLOCK);


   buf = _hash_addovflpage(rel, metabuf, buf, (buf == bucket_buf) ? 1 : 0);
   page = BufferGetPage(buf);


   Assert(PageGetFreeSpace(page) >= itemsz);
  }
  pageopaque = (HashPageOpaque) PageGetSpecialPointer(page);
  Assert((pageopaque->hasho_flag & LH_PAGE_TYPE) == LH_OVERFLOW_PAGE);
  Assert(pageopaque->hasho_bucket == bucket);
 }





 LockBuffer(metabuf, BUFFER_LOCK_EXCLUSIVE);


 START_CRIT_SECTION();


 itup_off = _hash_pgaddtup(rel, buf, itemsz, itup);
 MarkBufferDirty(buf);


 metap = HashPageGetMeta(metapage);
 metap->hashm_ntuples += 1;


 do_expand = metap->hashm_ntuples >
  (double) metap->hashm_ffactor * (metap->hashm_maxbucket + 1);

 MarkBufferDirty(metabuf);


 if (RelationNeedsWAL(rel))
 {
  xl_hash_insert xlrec;
  XLogRecPtr recptr;

  xlrec.offnum = itup_off;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfHashInsert);

  XLogRegisterBuffer(1, metabuf, REGBUF_STANDARD);

  XLogRegisterBuffer(0, buf, REGBUF_STANDARD);
  XLogRegisterBufData(0, (char *) itup, IndexTupleSize(itup));

  recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_INSERT);

  PageSetLSN(BufferGetPage(buf), recptr);
  PageSetLSN(BufferGetPage(metabuf), recptr);
 }

 END_CRIT_SECTION();


 LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);





 _hash_relbuf(rel, buf);
 if (buf != bucket_buf)
  _hash_dropbuf(rel, bucket_buf);


 if (do_expand)
  _hash_expandtable(rel, metabuf);


 _hash_dropbuf(rel, metabuf);
}
