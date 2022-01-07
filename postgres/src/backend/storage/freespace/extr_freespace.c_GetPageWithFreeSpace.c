
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int Size ;
typedef int Relation ;
typedef int BlockNumber ;


 int fsm_search (int ,int ) ;
 int fsm_space_needed_to_cat (int ) ;

BlockNumber
GetPageWithFreeSpace(Relation rel, Size spaceNeeded)
{
 uint8 min_cat = fsm_space_needed_to_cat(spaceNeeded);

 return fsm_search(rel, min_cat);
}
