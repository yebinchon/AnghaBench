
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_4__ {TYPE_1__ pub; } ;
typedef TYPE_2__ TStoreState ;
typedef int DestReceiver ;


 int DestTuplestore ;
 scalar_t__ palloc0 (int) ;
 int tstoreDestroyReceiver ;
 int tstoreReceiveSlot_notoast ;
 int tstoreShutdownReceiver ;
 int tstoreStartupReceiver ;

DestReceiver *
CreateTuplestoreDestReceiver(void)
{
 TStoreState *self = (TStoreState *) palloc0(sizeof(TStoreState));

 self->pub.receiveSlot = tstoreReceiveSlot_notoast;
 self->pub.rStartup = tstoreStartupReceiver;
 self->pub.rShutdown = tstoreShutdownReceiver;
 self->pub.rDestroy = tstoreDestroyReceiver;
 self->pub.mydest = DestTuplestore;



 return (DestReceiver *) self;
}
