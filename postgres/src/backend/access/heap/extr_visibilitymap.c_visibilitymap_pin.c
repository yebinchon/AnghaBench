
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BufferGetBlockNumber (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ HEAPBLK_TO_MAPBLOCK (scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int vm_readbuf (int ,scalar_t__,int) ;

void
visibilitymap_pin(Relation rel, BlockNumber heapBlk, Buffer *buf)
{
 BlockNumber mapBlock = HEAPBLK_TO_MAPBLOCK(heapBlk);


 if (BufferIsValid(*buf))
 {
  if (BufferGetBlockNumber(*buf) == mapBlock)
   return;

  ReleaseBuffer(*buf);
 }
 *buf = vm_readbuf(rel, mapBlock, 1);
}
