
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rel; int ti_options; int bistate; } ;
typedef int DestReceiver ;
typedef TYPE_1__ DR_intorel ;


 int FreeBulkInsertState (int ) ;
 int NoLock ;
 int table_close (int *,int ) ;
 int table_finish_bulk_insert (int *,int ) ;

__attribute__((used)) static void
intorel_shutdown(DestReceiver *self)
{
 DR_intorel *myState = (DR_intorel *) self;

 FreeBulkInsertState(myState->bistate);

 table_finish_bulk_insert(myState->rel, myState->ti_options);


 table_close(myState->rel, NoLock);
 myState->rel = ((void*)0);
}
