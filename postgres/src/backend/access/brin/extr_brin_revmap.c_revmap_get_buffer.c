
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rm_lastRevmapPage; int rm_currBuf; int rm_irel; } ;
typedef int Buffer ;
typedef TYPE_1__ BrinRevmap ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BRIN_METAPAGE_BLKNO ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int ERROR ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int ReadBuffer (int ,scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ revmap_get_blkno (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static Buffer
revmap_get_buffer(BrinRevmap *revmap, BlockNumber heapBlk)
{
 BlockNumber mapBlk;


 mapBlk = revmap_get_blkno(revmap, heapBlk);

 if (mapBlk == InvalidBlockNumber)
  elog(ERROR, "revmap does not cover heap block %u", heapBlk);


 Assert(mapBlk != BRIN_METAPAGE_BLKNO &&
     mapBlk <= revmap->rm_lastRevmapPage);






 if (revmap->rm_currBuf == InvalidBuffer ||
  mapBlk != BufferGetBlockNumber(revmap->rm_currBuf))
 {
  if (revmap->rm_currBuf != InvalidBuffer)
   ReleaseBuffer(revmap->rm_currBuf);

  revmap->rm_currBuf = ReadBuffer(revmap->rm_irel, mapBlk);
 }

 return revmap->rm_currBuf;
}
