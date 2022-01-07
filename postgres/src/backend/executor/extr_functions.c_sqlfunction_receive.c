
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int tstore; int filter; } ;
typedef int DestReceiver ;
typedef TYPE_1__ DR_sqlfunction ;


 int * ExecFilterJunk (int ,int *) ;
 int tuplestore_puttupleslot (int ,int *) ;

__attribute__((used)) static bool
sqlfunction_receive(TupleTableSlot *slot, DestReceiver *self)
{
 DR_sqlfunction *myState = (DR_sqlfunction *) self;


 slot = ExecFilterJunk(myState->filter, slot);


 tuplestore_puttupleslot(myState->tstore, slot);

 return 1;
}
