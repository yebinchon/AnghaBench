
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef size_t uint32 ;
typedef int Relation ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int DEBUG1 ;
 scalar_t__ HEAPBLK_TO_MAPBLOCK (scalar_t__) ;
 size_t HEAPBLK_TO_MAPBYTE (scalar_t__) ;
 int HEAPBLK_TO_OFFSET (scalar_t__) ;
 int InvalidBuffer ;
 char* PageGetContents (int ) ;
 int RelationGetRelationName (int ) ;
 int ReleaseBuffer (int ) ;
 char VISIBILITYMAP_VALID_BITS ;
 int elog (int ,char*,int ,scalar_t__) ;
 int vm_readbuf (int ,scalar_t__,int) ;

uint8
visibilitymap_get_status(Relation rel, BlockNumber heapBlk, Buffer *buf)
{
 BlockNumber mapBlock = HEAPBLK_TO_MAPBLOCK(heapBlk);
 uint32 mapByte = HEAPBLK_TO_MAPBYTE(heapBlk);
 uint8 mapOffset = HEAPBLK_TO_OFFSET(heapBlk);
 char *map;
 uint8 result;






 if (BufferIsValid(*buf))
 {
  if (BufferGetBlockNumber(*buf) != mapBlock)
  {
   ReleaseBuffer(*buf);
   *buf = InvalidBuffer;
  }
 }

 if (!BufferIsValid(*buf))
 {
  *buf = vm_readbuf(rel, mapBlock, 0);
  if (!BufferIsValid(*buf))
   return 0;
 }

 map = PageGetContents(BufferGetPage(*buf));






 result = ((map[mapByte] >> mapOffset) & VISIBILITYMAP_VALID_BITS);
 return result;
}
