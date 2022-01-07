
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int new_bucket_flag; int old_bucket_flag; } ;
typedef TYPE_1__ xl_hash_split_complete ;
typedef int uint32 ;
typedef int uint16 ;
typedef int XLogRecPtr ;
struct TYPE_12__ {int hasho_flag; int hasho_nextblkno; } ;
struct TYPE_11__ {int t_info; int t_tid; } ;
typedef scalar_t__ Size ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_2__* IndexTuple ;
typedef TYPE_3__* HashPageOpaque ;
typedef int HTAB ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ Bucket ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BlockNumberIsValid (int ) ;
 int BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 TYPE_2__* CopyIndexTuple (TYPE_2__*) ;
 int END_CRIT_SECTION () ;
 scalar_t__ FirstOffsetNumber ;
 int HASH_FIND ;
 int HASH_READ ;
 int INDEX_MOVED_BY_SPLIT_MASK ;
 scalar_t__ IndexTupleSize (TYPE_2__*) ;
 scalar_t__ IsBufferCleanupOK (scalar_t__) ;
 scalar_t__ ItemIdIsDead (int ) ;
 int LH_BUCKET_BEING_POPULATED ;
 int LH_BUCKET_BEING_SPLIT ;
 int LH_BUCKET_NEEDS_SPLIT_CLEANUP ;
 int LH_OVERFLOW_PAGE ;
 int LockBuffer (scalar_t__,int ) ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int MarkBufferDirty (scalar_t__) ;
 int MaxIndexTuplesPerPage ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageGetFreeSpaceForMultipleTuples (int ,int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageSetLSN (int ,int ) ;
 int PredicateLockPageSplit (int ,int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_HASH_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfHashSplitComplete ;
 int XLOG_HASH_SPLIT_COMPLETE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,scalar_t__,int ) ;
 int XLogRegisterData (char*,int ) ;
 scalar_t__ _hash_addovflpage (int ,scalar_t__,scalar_t__,int) ;
 int _hash_get_indextuple_hashkey (TYPE_2__*) ;
 scalar_t__ _hash_getbuf (int ,int ,int ,int ) ;
 scalar_t__ _hash_hashkey2bucket (int ,int ,int ,int ) ;
 int _hash_pgaddmultitup (int ,scalar_t__,TYPE_2__**,scalar_t__*,int) ;
 int _hash_relbuf (int ,scalar_t__) ;
 int hash_search (int *,int *,int ,int*) ;
 int hashbucketcleanup (int ,scalar_t__,scalar_t__,int ,int *,int ,int ,int ,int *,int *,int,int *,int *) ;
 int log_split_page (int ,scalar_t__) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
_hash_splitbucket(Relation rel,
      Buffer metabuf,
      Bucket obucket,
      Bucket nbucket,
      Buffer obuf,
      Buffer nbuf,
      HTAB *htab,
      uint32 maxbucket,
      uint32 highmask,
      uint32 lowmask)
{
 Buffer bucket_obuf;
 Buffer bucket_nbuf;
 Page opage;
 Page npage;
 HashPageOpaque oopaque;
 HashPageOpaque nopaque;
 OffsetNumber itup_offsets[MaxIndexTuplesPerPage];
 IndexTuple itups[MaxIndexTuplesPerPage];
 Size all_tups_size = 0;
 int i;
 uint16 nitups = 0;

 bucket_obuf = obuf;
 opage = BufferGetPage(obuf);
 oopaque = (HashPageOpaque) PageGetSpecialPointer(opage);

 bucket_nbuf = nbuf;
 npage = BufferGetPage(nbuf);
 nopaque = (HashPageOpaque) PageGetSpecialPointer(npage);


 PredicateLockPageSplit(rel,
         BufferGetBlockNumber(bucket_obuf),
         BufferGetBlockNumber(bucket_nbuf));







 for (;;)
 {
  BlockNumber oblkno;
  OffsetNumber ooffnum;
  OffsetNumber omaxoffnum;


  omaxoffnum = PageGetMaxOffsetNumber(opage);
  for (ooffnum = FirstOffsetNumber;
    ooffnum <= omaxoffnum;
    ooffnum = OffsetNumberNext(ooffnum))
  {
   IndexTuple itup;
   Size itemsz;
   Bucket bucket;
   bool found = 0;


   if (ItemIdIsDead(PageGetItemId(opage, ooffnum)))
    continue;
   itup = (IndexTuple) PageGetItem(opage,
           PageGetItemId(opage, ooffnum));

   if (htab)
    (void) hash_search(htab, &itup->t_tid, HASH_FIND, &found);

   if (found)
    continue;

   bucket = _hash_hashkey2bucket(_hash_get_indextuple_hashkey(itup),
            maxbucket, highmask, lowmask);

   if (bucket == nbucket)
   {
    IndexTuple new_itup;




    new_itup = CopyIndexTuple(itup);





    new_itup->t_info |= INDEX_MOVED_BY_SPLIT_MASK;






    itemsz = IndexTupleSize(new_itup);
    itemsz = MAXALIGN(itemsz);

    if (PageGetFreeSpaceForMultipleTuples(npage, nitups + 1) < (all_tups_size + itemsz))
    {




     START_CRIT_SECTION();

     _hash_pgaddmultitup(rel, nbuf, itups, itup_offsets, nitups);
     MarkBufferDirty(nbuf);

     log_split_page(rel, nbuf);

     END_CRIT_SECTION();


     LockBuffer(nbuf, BUFFER_LOCK_UNLOCK);


     for (i = 0; i < nitups; i++)
      pfree(itups[i]);
     nitups = 0;
     all_tups_size = 0;


     nbuf = _hash_addovflpage(rel, metabuf, nbuf, (nbuf == bucket_nbuf) ? 1 : 0);
     npage = BufferGetPage(nbuf);
     nopaque = (HashPageOpaque) PageGetSpecialPointer(npage);
    }

    itups[nitups++] = new_itup;
    all_tups_size += itemsz;
   }
   else
   {



    Assert(bucket == obucket);
   }
  }

  oblkno = oopaque->hasho_nextblkno;


  if (obuf == bucket_obuf)
   LockBuffer(obuf, BUFFER_LOCK_UNLOCK);
  else
   _hash_relbuf(rel, obuf);


  if (!BlockNumberIsValid(oblkno))
  {




   START_CRIT_SECTION();

   _hash_pgaddmultitup(rel, nbuf, itups, itup_offsets, nitups);
   MarkBufferDirty(nbuf);

   log_split_page(rel, nbuf);

   END_CRIT_SECTION();

   if (nbuf == bucket_nbuf)
    LockBuffer(nbuf, BUFFER_LOCK_UNLOCK);
   else
    _hash_relbuf(rel, nbuf);


   for (i = 0; i < nitups; i++)
    pfree(itups[i]);
   break;
  }


  obuf = _hash_getbuf(rel, oblkno, HASH_READ, LH_OVERFLOW_PAGE);
  opage = BufferGetPage(obuf);
  oopaque = (HashPageOpaque) PageGetSpecialPointer(opage);
 }
 LockBuffer(bucket_obuf, BUFFER_LOCK_EXCLUSIVE);
 opage = BufferGetPage(bucket_obuf);
 oopaque = (HashPageOpaque) PageGetSpecialPointer(opage);

 LockBuffer(bucket_nbuf, BUFFER_LOCK_EXCLUSIVE);
 npage = BufferGetPage(bucket_nbuf);
 nopaque = (HashPageOpaque) PageGetSpecialPointer(npage);

 START_CRIT_SECTION();

 oopaque->hasho_flag &= ~LH_BUCKET_BEING_SPLIT;
 nopaque->hasho_flag &= ~LH_BUCKET_BEING_POPULATED;







 oopaque->hasho_flag |= LH_BUCKET_NEEDS_SPLIT_CLEANUP;





 MarkBufferDirty(bucket_obuf);
 MarkBufferDirty(bucket_nbuf);

 if (RelationNeedsWAL(rel))
 {
  XLogRecPtr recptr;
  xl_hash_split_complete xlrec;

  xlrec.old_bucket_flag = oopaque->hasho_flag;
  xlrec.new_bucket_flag = nopaque->hasho_flag;

  XLogBeginInsert();

  XLogRegisterData((char *) &xlrec, SizeOfHashSplitComplete);

  XLogRegisterBuffer(0, bucket_obuf, REGBUF_STANDARD);
  XLogRegisterBuffer(1, bucket_nbuf, REGBUF_STANDARD);

  recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_SPLIT_COMPLETE);

  PageSetLSN(BufferGetPage(bucket_obuf), recptr);
  PageSetLSN(BufferGetPage(bucket_nbuf), recptr);
 }

 END_CRIT_SECTION();
 if (IsBufferCleanupOK(bucket_obuf))
 {
  LockBuffer(bucket_nbuf, BUFFER_LOCK_UNLOCK);
  hashbucketcleanup(rel, obucket, bucket_obuf,
        BufferGetBlockNumber(bucket_obuf), ((void*)0),
        maxbucket, highmask, lowmask, ((void*)0), ((void*)0), 1,
        ((void*)0), ((void*)0));
 }
 else
 {
  LockBuffer(bucket_nbuf, BUFFER_LOCK_UNLOCK);
  LockBuffer(bucket_obuf, BUFFER_LOCK_UNLOCK);
 }
}
