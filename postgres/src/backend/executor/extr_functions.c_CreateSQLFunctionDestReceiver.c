
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_4__ {TYPE_1__ pub; } ;
typedef int DestReceiver ;
typedef TYPE_2__ DR_sqlfunction ;


 int DestSQLFunction ;
 scalar_t__ palloc0 (int) ;
 int sqlfunction_destroy ;
 int sqlfunction_receive ;
 int sqlfunction_shutdown ;
 int sqlfunction_startup ;

DestReceiver *
CreateSQLFunctionDestReceiver(void)
{
 DR_sqlfunction *self = (DR_sqlfunction *) palloc0(sizeof(DR_sqlfunction));

 self->pub.receiveSlot = sqlfunction_receive;
 self->pub.rStartup = sqlfunction_startup;
 self->pub.rShutdown = sqlfunction_shutdown;
 self->pub.rDestroy = sqlfunction_destroy;
 self->pub.mydest = DestSQLFunction;



 return (DestReceiver *) self;
}
