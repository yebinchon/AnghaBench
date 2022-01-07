
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int Tuplestorestate ;
struct TYPE_3__ {scalar_t__ mydest; } ;
struct TYPE_4__ {int detoast; int cxt; int * tstore; TYPE_1__ pub; } ;
typedef TYPE_2__ TStoreState ;
typedef int MemoryContext ;
typedef int DestReceiver ;


 int Assert (int) ;
 scalar_t__ DestTuplestore ;

void
SetTuplestoreDestReceiverParams(DestReceiver *self,
        Tuplestorestate *tStore,
        MemoryContext tContext,
        bool detoast)
{
 TStoreState *myState = (TStoreState *) self;

 Assert(myState->pub.mydest == DestTuplestore);
 myState->tstore = tStore;
 myState->cxt = tContext;
 myState->detoast = detoast;
}
