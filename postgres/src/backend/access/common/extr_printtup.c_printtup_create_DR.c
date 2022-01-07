
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * data; } ;
struct TYPE_4__ {scalar_t__ mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_6__ {int sendDescrip; int * tmpcontext; TYPE_2__ buf; int * myinfo; scalar_t__ nattrs; int * attrinfo; TYPE_1__ pub; } ;
typedef int DestReceiver ;
typedef TYPE_3__ DR_printtup ;
typedef scalar_t__ CommandDest ;


 scalar_t__ DestRemote ;
 scalar_t__ palloc0 (int) ;
 int printtup ;
 int printtup_destroy ;
 int printtup_shutdown ;
 int printtup_startup ;

DestReceiver *
printtup_create_DR(CommandDest dest)
{
 DR_printtup *self = (DR_printtup *) palloc0(sizeof(DR_printtup));

 self->pub.receiveSlot = printtup;
 self->pub.rStartup = printtup_startup;
 self->pub.rShutdown = printtup_shutdown;
 self->pub.rDestroy = printtup_destroy;
 self->pub.mydest = dest;





 self->sendDescrip = (dest == DestRemote);

 self->attrinfo = ((void*)0);
 self->nattrs = 0;
 self->myinfo = ((void*)0);
 self->buf.data = ((void*)0);
 self->tmpcontext = ((void*)0);

 return (DestReceiver *) self;
}
