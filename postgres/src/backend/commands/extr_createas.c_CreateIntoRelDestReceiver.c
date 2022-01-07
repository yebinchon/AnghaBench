
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_4__ {int * into; TYPE_1__ pub; } ;
typedef int IntoClause ;
typedef int DestReceiver ;
typedef TYPE_2__ DR_intorel ;


 int DestIntoRel ;
 int intorel_destroy ;
 int intorel_receive ;
 int intorel_shutdown ;
 int intorel_startup ;
 scalar_t__ palloc0 (int) ;

DestReceiver *
CreateIntoRelDestReceiver(IntoClause *intoClause)
{
 DR_intorel *self = (DR_intorel *) palloc0(sizeof(DR_intorel));

 self->pub.receiveSlot = intorel_receive;
 self->pub.rStartup = intorel_startup;
 self->pub.rShutdown = intorel_shutdown;
 self->pub.rDestroy = intorel_destroy;
 self->pub.mydest = DestIntoRel;
 self->into = intoClause;


 return (DestReceiver *) self;
}
