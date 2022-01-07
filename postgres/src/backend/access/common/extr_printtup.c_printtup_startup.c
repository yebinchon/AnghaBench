
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {int buf; scalar_t__ sendDescrip; int tmpcontext; TYPE_1__* portal; } ;
struct TYPE_4__ {char* name; int formats; } ;
typedef TYPE_1__* Portal ;
typedef int DestReceiver ;
typedef TYPE_2__ DR_printtup ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;
 int FetchPortalTargetList (TYPE_1__*) ;
 int FrontendProtocol ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int SendRowDescriptionMessage (int *,int ,int ,int ) ;
 int initStringInfo (int *) ;
 int pq_puttextmessage (char,char const*) ;

__attribute__((used)) static void
printtup_startup(DestReceiver *self, int operation, TupleDesc typeinfo)
{
 DR_printtup *myState = (DR_printtup *) self;
 Portal portal = myState->portal;





 initStringInfo(&myState->buf);







 myState->tmpcontext = AllocSetContextCreate(CurrentMemoryContext,
            "printtup",
            ALLOCSET_DEFAULT_SIZES);

 if (PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
 {





  const char *portalName = portal->name;

  if (portalName == ((void*)0) || portalName[0] == '\0')
   portalName = "blank";

  pq_puttextmessage('P', portalName);
 }





 if (myState->sendDescrip)
  SendRowDescriptionMessage(&myState->buf,
          typeinfo,
          FetchPortalTargetList(portal),
          portal->formats);
}
