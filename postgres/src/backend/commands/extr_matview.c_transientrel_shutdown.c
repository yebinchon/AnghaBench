
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * transientrel; int ti_options; int bistate; } ;
typedef int DestReceiver ;
typedef TYPE_1__ DR_transientrel ;


 int FreeBulkInsertState (int ) ;
 int NoLock ;
 int table_close (int *,int ) ;
 int table_finish_bulk_insert (int *,int ) ;

__attribute__((used)) static void
transientrel_shutdown(DestReceiver *self)
{
 DR_transientrel *myState = (DR_transientrel *) self;

 FreeBulkInsertState(myState->bistate);

 table_finish_bulk_insert(myState->transientrel, myState->ti_options);


 table_close(myState->transientrel, NoLock);
 myState->transientrel = ((void*)0);
}
