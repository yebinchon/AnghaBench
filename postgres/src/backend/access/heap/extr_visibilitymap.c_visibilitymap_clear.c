
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int Relation ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int DEBUG1 ;
 int ERROR ;
 scalar_t__ HEAPBLK_TO_MAPBLOCK (scalar_t__) ;
 int HEAPBLK_TO_MAPBYTE (scalar_t__) ;
 int HEAPBLK_TO_OFFSET (scalar_t__) ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 char* PageGetContents (int ) ;
 int RelationGetRelationName (int ) ;
 int VISIBILITYMAP_VALID_BITS ;
 int elog (int ,char*,...) ;

bool
visibilitymap_clear(Relation rel, BlockNumber heapBlk, Buffer buf, uint8 flags)
{
 BlockNumber mapBlock = HEAPBLK_TO_MAPBLOCK(heapBlk);
 int mapByte = HEAPBLK_TO_MAPBYTE(heapBlk);
 int mapOffset = HEAPBLK_TO_OFFSET(heapBlk);
 uint8 mask = flags << mapOffset;
 char *map;
 bool cleared = 0;

 Assert(flags & VISIBILITYMAP_VALID_BITS);





 if (!BufferIsValid(buf) || BufferGetBlockNumber(buf) != mapBlock)
  elog(ERROR, "wrong buffer passed to visibilitymap_clear");

 LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
 map = PageGetContents(BufferGetPage(buf));

 if (map[mapByte] & mask)
 {
  map[mapByte] &= ~mask;

  MarkBufferDirty(buf);
  cleared = 1;
 }

 LockBuffer(buf, BUFFER_LOCK_UNLOCK);

 return cleared;
}
