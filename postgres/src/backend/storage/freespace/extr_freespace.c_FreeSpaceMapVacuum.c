
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int BlockNumber ;


 int FSM_ROOT_ADDRESS ;
 int InvalidBlockNumber ;
 int fsm_vacuum_page (int ,int ,int ,int ,int*) ;

void
FreeSpaceMapVacuum(Relation rel)
{
 bool dummy;


 (void) fsm_vacuum_page(rel, FSM_ROOT_ADDRESS,
         (BlockNumber) 0, InvalidBlockNumber,
         &dummy);
}
