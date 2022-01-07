
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int bmpage_found; int bmsize; } ;
typedef TYPE_1__ xl_hash_add_ovfl_page ;
typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_11__ {int hashm_firstfree; int hashm_ovflpoint; int* hashm_spares; int hashm_nmaps; int hashm_bmsize; void** hashm_mapp; } ;
struct TYPE_10__ {int hasho_flag; int hasho_bucket; void* hasho_nextblkno; int hasho_page_id; void* hasho_prevblkno; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_2__* HashPageOpaque ;
typedef TYPE_3__* HashMetaPage ;
typedef int Buffer ;
typedef int Bucket ;
typedef void* BlockNumber ;


 int ALL_SET ;
 int Assert (int) ;
 int BITS_PER_MAP ;
 int BMPGSZ_BIT (TYPE_3__*) ;
 int BMPG_MASK (TYPE_3__*) ;
 int BMPG_SHIFT (TYPE_3__*) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BlockNumberIsValid (void*) ;
 void* BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int END_CRIT_SECTION () ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int HASHO_PAGE_ID ;
 int HASH_MAX_BITMAPS ;
 int HASH_WRITE ;
 int* HashPageGetBitmap (int ) ;
 TYPE_3__* HashPageGetMeta (int ) ;
 void* InvalidBlockNumber ;
 int InvalidBuffer ;
 int LH_BITMAP_PAGE ;
 int LH_BUCKET_PAGE ;
 int LH_META_PAGE ;
 int LH_OVERFLOW_PAGE ;
 int LH_PAGE_TYPE ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_HASH_ID ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int SETBIT (int*,int) ;
 int START_CRIT_SECTION () ;
 int SizeOfHashAddOvflPage ;
 int XLOG_HASH_ADD_OVFL_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,char*,int) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 int _hash_checkpage (int ,int ,int) ;
 scalar_t__ _hash_firstfreebit (int) ;
 int _hash_getbuf (int ,void*,int ,int) ;
 int _hash_getinitbuf (int ,void*) ;
 int _hash_getnewbuf (int ,void*,int ) ;
 int _hash_initbitmapbuffer (int ,int ,int) ;
 int _hash_relbuf (int ,int ) ;
 void* bitno_to_blkno (TYPE_3__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

Buffer
_hash_addovflpage(Relation rel, Buffer metabuf, Buffer buf, bool retain_pin)
{
 Buffer ovflbuf;
 Page page;
 Page ovflpage;
 HashPageOpaque pageopaque;
 HashPageOpaque ovflopaque;
 HashMetaPage metap;
 Buffer mapbuf = InvalidBuffer;
 Buffer newmapbuf = InvalidBuffer;
 BlockNumber blkno;
 uint32 orig_firstfree;
 uint32 splitnum;
 uint32 *freep = ((void*)0);
 uint32 max_ovflpg;
 uint32 bit;
 uint32 bitmap_page_bit;
 uint32 first_page;
 uint32 last_bit;
 uint32 last_page;
 uint32 i,
    j;
 bool page_found = 0;
 LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);


 _hash_checkpage(rel, buf, LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);


 for (;;)
 {
  BlockNumber nextblkno;

  page = BufferGetPage(buf);
  pageopaque = (HashPageOpaque) PageGetSpecialPointer(page);
  nextblkno = pageopaque->hasho_nextblkno;

  if (!BlockNumberIsValid(nextblkno))
   break;


  if (retain_pin)
  {

   Assert((pageopaque->hasho_flag & LH_PAGE_TYPE) == LH_BUCKET_PAGE);
   LockBuffer(buf, BUFFER_LOCK_UNLOCK);
  }
  else
   _hash_relbuf(rel, buf);

  retain_pin = 0;

  buf = _hash_getbuf(rel, nextblkno, HASH_WRITE, LH_OVERFLOW_PAGE);
 }


 LockBuffer(metabuf, BUFFER_LOCK_EXCLUSIVE);

 _hash_checkpage(rel, metabuf, LH_META_PAGE);
 metap = HashPageGetMeta(BufferGetPage(metabuf));


 orig_firstfree = metap->hashm_firstfree;
 first_page = orig_firstfree >> BMPG_SHIFT(metap);
 bit = orig_firstfree & BMPG_MASK(metap);
 i = first_page;
 j = bit / BITS_PER_MAP;
 bit &= ~(BITS_PER_MAP - 1);


 for (;;)
 {
  BlockNumber mapblkno;
  Page mappage;
  uint32 last_inpage;


  splitnum = metap->hashm_ovflpoint;
  max_ovflpg = metap->hashm_spares[splitnum] - 1;
  last_page = max_ovflpg >> BMPG_SHIFT(metap);
  last_bit = max_ovflpg & BMPG_MASK(metap);

  if (i > last_page)
   break;

  Assert(i < metap->hashm_nmaps);
  mapblkno = metap->hashm_mapp[i];

  if (i == last_page)
   last_inpage = last_bit;
  else
   last_inpage = BMPGSZ_BIT(metap) - 1;


  LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);

  mapbuf = _hash_getbuf(rel, mapblkno, HASH_WRITE, LH_BITMAP_PAGE);
  mappage = BufferGetPage(mapbuf);
  freep = HashPageGetBitmap(mappage);

  for (; bit <= last_inpage; j++, bit += BITS_PER_MAP)
  {
   if (freep[j] != ALL_SET)
   {
    page_found = 1;


    LockBuffer(metabuf, BUFFER_LOCK_EXCLUSIVE);


    bit += _hash_firstfreebit(freep[j]);
    bitmap_page_bit = bit;


    bit += (i << BMPG_SHIFT(metap));

    blkno = bitno_to_blkno(metap, bit);


    ovflbuf = _hash_getinitbuf(rel, blkno);

    goto found;
   }
  }


  _hash_relbuf(rel, mapbuf);
  mapbuf = InvalidBuffer;
  i++;
  j = 0;
  bit = 0;


  LockBuffer(metabuf, BUFFER_LOCK_EXCLUSIVE);
 }





 if (last_bit == (uint32) (BMPGSZ_BIT(metap) - 1))
 {
  bit = metap->hashm_spares[splitnum];


  if (metap->hashm_nmaps >= HASH_MAX_BITMAPS)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("out of overflow pages in hash index \"%s\"",
       RelationGetRelationName(rel))));

  newmapbuf = _hash_getnewbuf(rel, bitno_to_blkno(metap, bit), MAIN_FORKNUM);
 }
 else
 {




 }


 bit = BufferIsValid(newmapbuf) ?
  metap->hashm_spares[splitnum] + 1 : metap->hashm_spares[splitnum];
 blkno = bitno_to_blkno(metap, bit);
 ovflbuf = _hash_getnewbuf(rel, blkno, MAIN_FORKNUM);

found:






 START_CRIT_SECTION();

 if (page_found)
 {
  Assert(BufferIsValid(mapbuf));


  SETBIT(freep, bitmap_page_bit);
  MarkBufferDirty(mapbuf);
 }
 else
 {

  metap->hashm_spares[splitnum]++;

  if (BufferIsValid(newmapbuf))
  {
   _hash_initbitmapbuffer(newmapbuf, metap->hashm_bmsize, 0);
   MarkBufferDirty(newmapbuf);


   metap->hashm_mapp[metap->hashm_nmaps] = BufferGetBlockNumber(newmapbuf);
   metap->hashm_nmaps++;
   metap->hashm_spares[splitnum]++;
  }

  MarkBufferDirty(metabuf);





 }





 if (metap->hashm_firstfree == orig_firstfree)
 {
  metap->hashm_firstfree = bit + 1;
  MarkBufferDirty(metabuf);
 }


 ovflpage = BufferGetPage(ovflbuf);
 ovflopaque = (HashPageOpaque) PageGetSpecialPointer(ovflpage);
 ovflopaque->hasho_prevblkno = BufferGetBlockNumber(buf);
 ovflopaque->hasho_nextblkno = InvalidBlockNumber;
 ovflopaque->hasho_bucket = pageopaque->hasho_bucket;
 ovflopaque->hasho_flag = LH_OVERFLOW_PAGE;
 ovflopaque->hasho_page_id = HASHO_PAGE_ID;

 MarkBufferDirty(ovflbuf);


 pageopaque->hasho_nextblkno = BufferGetBlockNumber(ovflbuf);

 MarkBufferDirty(buf);


 if (RelationNeedsWAL(rel))
 {
  XLogRecPtr recptr;
  xl_hash_add_ovfl_page xlrec;

  xlrec.bmpage_found = page_found;
  xlrec.bmsize = metap->hashm_bmsize;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfHashAddOvflPage);

  XLogRegisterBuffer(0, ovflbuf, REGBUF_WILL_INIT);
  XLogRegisterBufData(0, (char *) &pageopaque->hasho_bucket, sizeof(Bucket));

  XLogRegisterBuffer(1, buf, REGBUF_STANDARD);

  if (BufferIsValid(mapbuf))
  {
   XLogRegisterBuffer(2, mapbuf, REGBUF_STANDARD);
   XLogRegisterBufData(2, (char *) &bitmap_page_bit, sizeof(uint32));
  }

  if (BufferIsValid(newmapbuf))
   XLogRegisterBuffer(3, newmapbuf, REGBUF_WILL_INIT);

  XLogRegisterBuffer(4, metabuf, REGBUF_STANDARD);
  XLogRegisterBufData(4, (char *) &metap->hashm_firstfree, sizeof(uint32));

  recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_ADD_OVFL_PAGE);

  PageSetLSN(BufferGetPage(ovflbuf), recptr);
  PageSetLSN(BufferGetPage(buf), recptr);

  if (BufferIsValid(mapbuf))
   PageSetLSN(BufferGetPage(mapbuf), recptr);

  if (BufferIsValid(newmapbuf))
   PageSetLSN(BufferGetPage(newmapbuf), recptr);

  PageSetLSN(BufferGetPage(metabuf), recptr);
 }

 END_CRIT_SECTION();

 if (retain_pin)
  LockBuffer(buf, BUFFER_LOCK_UNLOCK);
 else
  _hash_relbuf(rel, buf);

 if (BufferIsValid(mapbuf))
  _hash_relbuf(rel, mapbuf);

 LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);

 if (BufferIsValid(newmapbuf))
  _hash_relbuf(rel, newmapbuf);

 return ovflbuf;
}
