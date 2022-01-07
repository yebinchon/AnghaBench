
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef scalar_t__ BlockNumber ;


 int FSM_ROOT_ADDRESS ;
 int fsm_vacuum_page (int ,int ,scalar_t__,scalar_t__,int*) ;

void
FreeSpaceMapVacuumRange(Relation rel, BlockNumber start, BlockNumber end)
{
 bool dummy;


 if (end > start)
  (void) fsm_vacuum_page(rel, FSM_ROOT_ADDRESS, start, end, &dummy);
}
