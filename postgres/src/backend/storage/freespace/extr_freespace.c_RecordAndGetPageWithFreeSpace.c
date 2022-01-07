
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int Size ;
typedef int Relation ;
typedef int FSMAddress ;
typedef int BlockNumber ;


 int fsm_get_heap_blk (int ,int) ;
 int fsm_get_location (int ,int *) ;
 int fsm_search (int ,int) ;
 int fsm_set_and_search (int ,int ,int ,int,int) ;
 int fsm_space_avail_to_cat (int ) ;
 int fsm_space_needed_to_cat (int ) ;

BlockNumber
RecordAndGetPageWithFreeSpace(Relation rel, BlockNumber oldPage,
         Size oldSpaceAvail, Size spaceNeeded)
{
 int old_cat = fsm_space_avail_to_cat(oldSpaceAvail);
 int search_cat = fsm_space_needed_to_cat(spaceNeeded);
 FSMAddress addr;
 uint16 slot;
 int search_slot;


 addr = fsm_get_location(oldPage, &slot);

 search_slot = fsm_set_and_search(rel, addr, slot, old_cat, search_cat);





 if (search_slot != -1)
  return fsm_get_heap_blk(addr, search_slot);
 else
  return fsm_search(rel, search_cat);
}
