
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_4__ {scalar_t__ processed; int * cstate; TYPE_1__ pub; } ;
typedef int DestReceiver ;
typedef TYPE_2__ DR_copy ;


 int DestCopyOut ;
 int copy_dest_destroy ;
 int copy_dest_receive ;
 int copy_dest_shutdown ;
 int copy_dest_startup ;
 scalar_t__ palloc (int) ;

DestReceiver *
CreateCopyDestReceiver(void)
{
 DR_copy *self = (DR_copy *) palloc(sizeof(DR_copy));

 self->pub.receiveSlot = copy_dest_receive;
 self->pub.rStartup = copy_dest_startup;
 self->pub.rShutdown = copy_dest_shutdown;
 self->pub.rDestroy = copy_dest_destroy;
 self->pub.mydest = DestCopyOut;

 self->cstate = ((void*)0);
 self->processed = 0;

 return (DestReceiver *) self;
}
