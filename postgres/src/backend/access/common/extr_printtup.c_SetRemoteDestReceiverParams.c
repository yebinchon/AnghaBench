
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mydest; int receiveSlot; } ;
struct TYPE_7__ {TYPE_1__ pub; TYPE_2__* portal; } ;
struct TYPE_6__ {scalar_t__* formats; } ;
typedef TYPE_2__* Portal ;
typedef int DestReceiver ;
typedef TYPE_3__ DR_printtup ;


 int Assert (int) ;
 scalar_t__ DestRemote ;
 scalar_t__ DestRemoteExecute ;
 int FrontendProtocol ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int printtup_20 ;
 int printtup_internal_20 ;

void
SetRemoteDestReceiverParams(DestReceiver *self, Portal portal)
{
 DR_printtup *myState = (DR_printtup *) self;

 Assert(myState->pub.mydest == DestRemote ||
     myState->pub.mydest == DestRemoteExecute);

 myState->portal = portal;

 if (PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
 {





  if (portal->formats && portal->formats[0] != 0)
   myState->pub.receiveSlot = printtup_internal_20;
  else
   myState->pub.receiveSlot = printtup_20;
 }
}
