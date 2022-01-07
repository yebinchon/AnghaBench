
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_4__ {int transientoid; TYPE_1__ pub; } ;
typedef int Oid ;
typedef int DestReceiver ;
typedef TYPE_2__ DR_transientrel ;


 int DestTransientRel ;
 scalar_t__ palloc0 (int) ;
 int transientrel_destroy ;
 int transientrel_receive ;
 int transientrel_shutdown ;
 int transientrel_startup ;

DestReceiver *
CreateTransientRelDestReceiver(Oid transientoid)
{
 DR_transientrel *self = (DR_transientrel *) palloc0(sizeof(DR_transientrel));

 self->pub.receiveSlot = transientrel_receive;
 self->pub.rStartup = transientrel_startup;
 self->pub.rShutdown = transientrel_shutdown;
 self->pub.rDestroy = transientrel_destroy;
 self->pub.mydest = DestTransientRel;
 self->transientoid = transientoid;

 return (DestReceiver *) self;
}
