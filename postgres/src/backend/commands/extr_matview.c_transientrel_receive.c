
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int bistate; int ti_options; int output_cid; int transientrel; } ;
typedef int DestReceiver ;
typedef TYPE_1__ DR_transientrel ;


 int table_tuple_insert (int ,int *,int ,int ,int ) ;

__attribute__((used)) static bool
transientrel_receive(TupleTableSlot *slot, DestReceiver *self)
{
 DR_transientrel *myState = (DR_transientrel *) self;
 table_tuple_insert(myState->transientrel,
        slot,
        myState->output_cid,
        myState->ti_options,
        myState->bistate);



 return 1;
}
