
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int processed; int cstate; } ;
typedef int DestReceiver ;
typedef TYPE_1__ DR_copy ;
typedef int CopyState ;


 int CopyOneRowTo (int ,int *) ;

__attribute__((used)) static bool
copy_dest_receive(TupleTableSlot *slot, DestReceiver *self)
{
 DR_copy *myState = (DR_copy *) self;
 CopyState cstate = myState->cstate;


 CopyOneRowTo(cstate, slot);
 myState->processed++;

 return 1;
}
