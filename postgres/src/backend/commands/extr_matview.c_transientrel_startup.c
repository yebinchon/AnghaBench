
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_2__ {int ti_options; int bistate; int output_cid; int transientrel; int transientoid; } ;
typedef int Relation ;
typedef int DestReceiver ;
typedef TYPE_1__ DR_transientrel ;


 int Assert (int) ;
 int GetBulkInsertState () ;
 int GetCurrentCommandId (int) ;
 scalar_t__ InvalidBlockNumber ;
 int NoLock ;
 scalar_t__ RelationGetTargetBlock (int ) ;
 int TABLE_INSERT_FROZEN ;
 int TABLE_INSERT_SKIP_FSM ;
 int TABLE_INSERT_SKIP_WAL ;
 int XLogIsNeeded () ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
transientrel_startup(DestReceiver *self, int operation, TupleDesc typeinfo)
{
 DR_transientrel *myState = (DR_transientrel *) self;
 Relation transientrel;

 transientrel = table_open(myState->transientoid, NoLock);




 myState->transientrel = transientrel;
 myState->output_cid = GetCurrentCommandId(1);





 myState->ti_options = TABLE_INSERT_SKIP_FSM | TABLE_INSERT_FROZEN;
 if (!XLogIsNeeded())
  myState->ti_options |= TABLE_INSERT_SKIP_WAL;
 myState->bistate = GetBulkInsertState();


 Assert(RelationGetTargetBlock(transientrel) == InvalidBlockNumber);
}
