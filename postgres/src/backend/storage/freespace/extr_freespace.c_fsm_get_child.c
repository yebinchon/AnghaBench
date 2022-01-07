
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_4__ {scalar_t__ level; int logpageno; } ;
typedef TYPE_1__ FSMAddress ;


 int Assert (int) ;
 scalar_t__ FSM_BOTTOM_LEVEL ;
 int SlotsPerFSMPage ;

__attribute__((used)) static FSMAddress
fsm_get_child(FSMAddress parent, uint16 slot)
{
 FSMAddress child;

 Assert(parent.level > FSM_BOTTOM_LEVEL);

 child.level = parent.level - 1;
 child.logpageno = parent.logpageno * SlotsPerFSMPage + slot;

 return child;
}
