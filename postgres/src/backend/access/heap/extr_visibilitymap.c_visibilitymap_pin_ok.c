
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BufferGetBlockNumber (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ HEAPBLK_TO_MAPBLOCK (scalar_t__) ;

bool
visibilitymap_pin_ok(BlockNumber heapBlk, Buffer buf)
{
 BlockNumber mapBlock = HEAPBLK_TO_MAPBLOCK(heapBlk);

 return BufferIsValid(buf) && BufferGetBlockNumber(buf) == mapBlock;
}
