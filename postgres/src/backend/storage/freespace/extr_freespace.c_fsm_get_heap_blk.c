
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_3__ {scalar_t__ level; scalar_t__ logpageno; } ;
typedef TYPE_1__ FSMAddress ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ FSM_BOTTOM_LEVEL ;
 unsigned int SlotsPerFSMPage ;

__attribute__((used)) static BlockNumber
fsm_get_heap_blk(FSMAddress addr, uint16 slot)
{
 Assert(addr.level == FSM_BOTTOM_LEVEL);
 return ((unsigned int) addr.logpageno) * SlotsPerFSMPage + slot;
}
