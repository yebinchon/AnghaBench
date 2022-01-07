
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int tstore; } ;
typedef TYPE_1__ TStoreState ;
typedef int DestReceiver ;


 int tuplestore_puttupleslot (int ,int *) ;

__attribute__((used)) static bool
tstoreReceiveSlot_notoast(TupleTableSlot *slot, DestReceiver *self)
{
 TStoreState *myState = (TStoreState *) self;

 tuplestore_puttupleslot(myState->tstore, slot);

 return 1;
}
