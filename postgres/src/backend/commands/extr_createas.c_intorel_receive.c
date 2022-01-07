
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int bistate; int ti_options; int output_cid; int rel; } ;
typedef int DestReceiver ;
typedef TYPE_1__ DR_intorel ;


 int table_tuple_insert (int ,int *,int ,int ,int ) ;

__attribute__((used)) static bool
intorel_receive(TupleTableSlot *slot, DestReceiver *self)
{
 DR_intorel *myState = (DR_intorel *) self;
 table_tuple_insert(myState->rel,
        slot,
        myState->output_cid,
        myState->ti_options,
        myState->bistate);



 return 1;
}
