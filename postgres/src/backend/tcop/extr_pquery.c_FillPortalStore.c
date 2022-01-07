
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int (* rDestroy ) (TYPE_2__*) ;} ;
struct TYPE_12__ {int strategy; int commandTag; int stmts; int holdContext; int holdStore; } ;
typedef TYPE_1__* Portal ;
typedef TYPE_2__ DestReceiver ;


 int COMPLETION_TAG_BUFSIZE ;
 TYPE_2__* CreateDestReceiver (int ) ;
 int DestTuplestore ;
 int ERROR ;
 int None_Receiver ;



 int PlannedStmt ;
 int PortalCreateHoldStore (TYPE_1__*) ;
 int PortalRunMulti (TYPE_1__*,int,int,TYPE_2__*,int ,char*) ;
 int PortalRunUtility (TYPE_1__*,int ,int,int,TYPE_2__*,char*) ;
 int SetTuplestoreDestReceiverParams (TYPE_2__*,int ,int ,int) ;
 int elog (int ,char*,int) ;
 int linitial_node (int ,int ) ;
 int pstrdup (char*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
FillPortalStore(Portal portal, bool isTopLevel)
{
 DestReceiver *treceiver;
 char completionTag[COMPLETION_TAG_BUFSIZE];

 PortalCreateHoldStore(portal);
 treceiver = CreateDestReceiver(DestTuplestore);
 SetTuplestoreDestReceiverParams(treceiver,
         portal->holdStore,
         portal->holdContext,
         0);

 completionTag[0] = '\0';

 switch (portal->strategy)
 {
  case 129:
  case 130:







   PortalRunMulti(portal, isTopLevel, 1,
         treceiver, None_Receiver, completionTag);
   break;

  case 128:
   PortalRunUtility(portal, linitial_node(PlannedStmt, portal->stmts),
        isTopLevel, 1, treceiver, completionTag);
   break;

  default:
   elog(ERROR, "unsupported portal strategy: %d",
     (int) portal->strategy);
   break;
 }


 if (completionTag[0] != '\0')
  portal->commandTag = pstrdup(completionTag);

 treceiver->rDestroy(treceiver);
}
