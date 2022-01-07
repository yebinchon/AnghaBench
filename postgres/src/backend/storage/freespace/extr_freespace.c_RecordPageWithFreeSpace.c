
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int Size ;
typedef int Relation ;
typedef int FSMAddress ;
typedef int BlockNumber ;


 int fsm_get_location (int ,int *) ;
 int fsm_set_and_search (int ,int ,int ,int,int ) ;
 int fsm_space_avail_to_cat (int ) ;

void
RecordPageWithFreeSpace(Relation rel, BlockNumber heapBlk, Size spaceAvail)
{
 int new_cat = fsm_space_avail_to_cat(spaceAvail);
 FSMAddress addr;
 uint16 slot;


 addr = fsm_get_location(heapBlk, &slot);

 fsm_set_and_search(rel, addr, slot, new_cat, 0);
}
