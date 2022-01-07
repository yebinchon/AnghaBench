
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int bmsize; } ;
typedef TYPE_1__ xl_hash_init_bitmap_page ;
typedef scalar_t__ uint32 ;
typedef int XLogRecPtr ;
struct TYPE_11__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_12__ {size_t hashm_nmaps; scalar_t__* hashm_mapp; scalar_t__ hashm_maxbucket; } ;
typedef int Page ;
typedef TYPE_3__* HashMetaPage ;
typedef scalar_t__ ForkNumber ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int FlushOneBuffer (int ) ;
 TYPE_3__* HashPageGetMeta (int ) ;
 scalar_t__ INIT_FORKNUM ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int,int *,scalar_t__*,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int _hash_initbitmapbuffer (int ,int ,int) ;

__attribute__((used)) static void
hash_xlog_init_bitmap_page(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer bitmapbuf;
 Buffer metabuf;
 Page page;
 HashMetaPage metap;
 uint32 num_buckets;
 ForkNumber forknum;

 xl_hash_init_bitmap_page *xlrec = (xl_hash_init_bitmap_page *) XLogRecGetData(record);




 bitmapbuf = XLogInitBufferForRedo(record, 0);
 _hash_initbitmapbuffer(bitmapbuf, xlrec->bmsize, 1);
 PageSetLSN(BufferGetPage(bitmapbuf), lsn);
 MarkBufferDirty(bitmapbuf);







 XLogRecGetBlockTag(record, 0, ((void*)0), &forknum, ((void*)0));
 if (forknum == INIT_FORKNUM)
  FlushOneBuffer(bitmapbuf);
 UnlockReleaseBuffer(bitmapbuf);


 if (XLogReadBufferForRedo(record, 1, &metabuf) == BLK_NEEDS_REDO)
 {






  page = BufferGetPage(metabuf);
  metap = HashPageGetMeta(page);

  num_buckets = metap->hashm_maxbucket + 1;
  metap->hashm_mapp[metap->hashm_nmaps] = num_buckets + 1;
  metap->hashm_nmaps++;

  PageSetLSN(page, lsn);
  MarkBufferDirty(metabuf);

  XLogRecGetBlockTag(record, 1, ((void*)0), &forknum, ((void*)0));
  if (forknum == INIT_FORKNUM)
   FlushOneBuffer(metabuf);
 }
 if (BufferIsValid(metabuf))
  UnlockReleaseBuffer(metabuf);
}
