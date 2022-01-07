
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tofree; int * outvalues; } ;
typedef TYPE_1__ TStoreState ;
typedef int DestReceiver ;


 int pfree (int *) ;

__attribute__((used)) static void
tstoreShutdownReceiver(DestReceiver *self)
{
 TStoreState *myState = (TStoreState *) self;


 if (myState->outvalues)
  pfree(myState->outvalues);
 myState->outvalues = ((void*)0);
 if (myState->tofree)
  pfree(myState->tofree);
 myState->tofree = ((void*)0);
}
