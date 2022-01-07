
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int Size ;
typedef int Relation ;
typedef int FSMAddress ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int ReleaseBuffer (int ) ;
 int fsm_get_avail (int ,int ) ;
 int fsm_get_location (int ,int *) ;
 int fsm_readbuf (int ,int ,int) ;
 int fsm_space_cat_to_avail (int ) ;

Size
GetRecordedFreeSpace(Relation rel, BlockNumber heapBlk)
{
 FSMAddress addr;
 uint16 slot;
 Buffer buf;
 uint8 cat;


 addr = fsm_get_location(heapBlk, &slot);

 buf = fsm_readbuf(rel, addr, 0);
 if (!BufferIsValid(buf))
  return 0;
 cat = fsm_get_avail(BufferGetPage(buf), slot);
 ReleaseBuffer(buf);

 return fsm_space_cat_to_avail(cat);
}
