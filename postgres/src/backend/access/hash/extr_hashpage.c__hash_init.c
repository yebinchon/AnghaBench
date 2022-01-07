
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {double num_tuples; int ffactor; int procid; } ;
typedef TYPE_1__ xl_hash_init_meta_page ;
struct TYPE_16__ {int bmsize; } ;
typedef TYPE_2__ xl_hash_init_bitmap_page ;
typedef scalar_t__ uint32 ;
typedef int int32 ;
typedef int XLogRecPtr ;
struct TYPE_18__ {scalar_t__ hashm_maxbucket; size_t hashm_nmaps; int hashm_bmsize; scalar_t__* hashm_mapp; int hashm_ffactor; int hashm_procid; } ;
struct TYPE_17__ {int rd_node; } ;
typedef TYPE_3__* Relation ;
typedef int RegProcedure ;
typedef int Page ;
typedef int ItemIdData ;
typedef int IndexTupleData ;
typedef TYPE_4__* HashMetaPage ;
typedef scalar_t__ ForkNumber ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BUCKET_TO_BLKNO (TYPE_4__*,scalar_t__) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int HASHSTANDARD_PROC ;
 int HASH_DEFAULT_FILLFACTOR ;
 size_t HASH_MAX_BITMAPS ;
 scalar_t__ HASH_METAPAGE ;
 TYPE_4__* HashPageGetMeta (int ) ;
 scalar_t__ INIT_FORKNUM ;
 int LH_BUCKET_PAGE ;
 int LockBuffer (int ,int ) ;
 int MAXALIGN (int) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_HASH_ID ;
 scalar_t__ RelationGetNumberOfBlocksInFork (TYPE_3__*,scalar_t__) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int RelationGetTargetPageUsage (TYPE_3__*,int ) ;
 scalar_t__ RelationNeedsWAL (TYPE_3__*) ;
 int SizeOfHashInitBitmapPage ;
 int SizeOfHashInitMetaPage ;
 int XLOG_HASH_INIT_BITMAP_PAGE ;
 int XLOG_HASH_INIT_META_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int) ;
 int XLogRegisterData (char*,int ) ;
 int _hash_getnewbuf (TYPE_3__*,scalar_t__,scalar_t__) ;
 int _hash_init_metabuffer (int ,double,int ,int,int) ;
 int _hash_initbitmapbuffer (int ,int ,int) ;
 int _hash_initbuf (int ,scalar_t__,scalar_t__,int ,int) ;
 int _hash_relbuf (TYPE_3__*,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int index_getprocid (TYPE_3__*,int,int ) ;
 int log_newpage (int *,scalar_t__,scalar_t__,int ,int) ;

uint32
_hash_init(Relation rel, double num_tuples, ForkNumber forkNum)
{
 Buffer metabuf;
 Buffer buf;
 Buffer bitmapbuf;
 Page pg;
 HashMetaPage metap;
 RegProcedure procid;
 int32 data_width;
 int32 item_width;
 int32 ffactor;
 uint32 num_buckets;
 uint32 i;
 bool use_wal;


 if (RelationGetNumberOfBlocksInFork(rel, forkNum) != 0)
  elog(ERROR, "cannot initialize non-empty hash index \"%s\"",
    RelationGetRelationName(rel));






 use_wal = RelationNeedsWAL(rel) || forkNum == INIT_FORKNUM;







 data_width = sizeof(uint32);
 item_width = MAXALIGN(sizeof(IndexTupleData)) + MAXALIGN(data_width) +
  sizeof(ItemIdData);
 ffactor = RelationGetTargetPageUsage(rel, HASH_DEFAULT_FILLFACTOR) / item_width;

 if (ffactor < 10)
  ffactor = 10;

 procid = index_getprocid(rel, 1, HASHSTANDARD_PROC);
 metabuf = _hash_getnewbuf(rel, HASH_METAPAGE, forkNum);
 _hash_init_metabuffer(metabuf, num_tuples, procid, ffactor, 0);
 MarkBufferDirty(metabuf);

 pg = BufferGetPage(metabuf);
 metap = HashPageGetMeta(pg);


 if (use_wal)
 {
  xl_hash_init_meta_page xlrec;
  XLogRecPtr recptr;

  xlrec.num_tuples = num_tuples;
  xlrec.procid = metap->hashm_procid;
  xlrec.ffactor = metap->hashm_ffactor;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfHashInitMetaPage);
  XLogRegisterBuffer(0, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);

  recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_INIT_META_PAGE);

  PageSetLSN(BufferGetPage(metabuf), recptr);
 }

 num_buckets = metap->hashm_maxbucket + 1;







 LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);




 for (i = 0; i < num_buckets; i++)
 {
  BlockNumber blkno;


  CHECK_FOR_INTERRUPTS();

  blkno = BUCKET_TO_BLKNO(metap, i);
  buf = _hash_getnewbuf(rel, blkno, forkNum);
  _hash_initbuf(buf, metap->hashm_maxbucket, i, LH_BUCKET_PAGE, 0);
  MarkBufferDirty(buf);

  if (use_wal)
   log_newpage(&rel->rd_node,
      forkNum,
      blkno,
      BufferGetPage(buf),
      1);
  _hash_relbuf(rel, buf);
 }


 LockBuffer(metabuf, BUFFER_LOCK_EXCLUSIVE);




 bitmapbuf = _hash_getnewbuf(rel, num_buckets + 1, forkNum);
 _hash_initbitmapbuffer(bitmapbuf, metap->hashm_bmsize, 0);
 MarkBufferDirty(bitmapbuf);



 if (metap->hashm_nmaps >= HASH_MAX_BITMAPS)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("out of overflow pages in hash index \"%s\"",
      RelationGetRelationName(rel))));

 metap->hashm_mapp[metap->hashm_nmaps] = num_buckets + 1;

 metap->hashm_nmaps++;
 MarkBufferDirty(metabuf);


 if (use_wal)
 {
  xl_hash_init_bitmap_page xlrec;
  XLogRecPtr recptr;

  xlrec.bmsize = metap->hashm_bmsize;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfHashInitBitmapPage);
  XLogRegisterBuffer(0, bitmapbuf, REGBUF_WILL_INIT);






  XLogRegisterBuffer(1, metabuf, REGBUF_STANDARD);

  recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_INIT_BITMAP_PAGE);

  PageSetLSN(BufferGetPage(bitmapbuf), recptr);
  PageSetLSN(BufferGetPage(metabuf), recptr);
 }


 _hash_relbuf(rel, bitmapbuf);
 _hash_relbuf(rel, metabuf);

 return num_buckets;
}
