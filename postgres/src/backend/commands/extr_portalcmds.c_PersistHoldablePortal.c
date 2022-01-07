
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int (* rDestroy ) (TYPE_3__*) ;} ;
struct TYPE_16__ {scalar_t__ createSubid; int portalPos; int * portalContext; int status; int * holdStore; scalar_t__ atEnd; int * holdContext; TYPE_1__* queryDesc; scalar_t__ resowner; int tupDesc; int * holdSnapshot; } ;
struct TYPE_15__ {TYPE_3__* dest; int snapshot; } ;
typedef scalar_t__ ResourceOwner ;
typedef TYPE_1__ QueryDesc ;
typedef TYPE_2__* Portal ;
typedef int * MemoryContext ;


 TYPE_2__* ActivePortal ;
 int Assert (int) ;
 TYPE_3__* CreateDestReceiver (int ) ;
 int CreateTupleDescCopy (int ) ;
 scalar_t__ CurrentResourceOwner ;
 int DestTuplestore ;
 int ERROR ;
 int ExecutorEnd (TYPE_1__*) ;
 int ExecutorFinish (TYPE_1__*) ;
 int ExecutorRewind (TYPE_1__*) ;
 int ExecutorRun (TYPE_1__*,int ,long,int) ;
 int ForwardScanDirection ;
 int FreeQueryDesc (TYPE_1__*) ;
 scalar_t__ InvalidSubTransactionId ;
 int MarkPortalActive (TYPE_2__*) ;
 int MarkPortalFailed (TYPE_2__*) ;
 int MemoryContextDeleteChildren (int *) ;
 int * MemoryContextSwitchTo (int *) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int PORTAL_READY ;
 int PopActiveSnapshot () ;
 int * PortalContext ;
 int PushActiveSnapshot (int ) ;
 int SetTuplestoreDestReceiverParams (TYPE_3__*,int *,int *,int) ;
 int elog (int ,char*) ;
 int stub1 (TYPE_3__*) ;
 int tuplestore_rescan (int *) ;
 scalar_t__ tuplestore_skiptuples (int *,int,int) ;

void
PersistHoldablePortal(Portal portal)
{
 QueryDesc *queryDesc = portal->queryDesc;
 Portal saveActivePortal;
 ResourceOwner saveResourceOwner;
 MemoryContext savePortalContext;
 MemoryContext oldcxt;





 Assert(portal->createSubid != InvalidSubTransactionId);
 Assert(queryDesc != ((void*)0));




 Assert(portal->holdContext != ((void*)0));
 Assert(portal->holdStore != ((void*)0));
 Assert(portal->holdSnapshot == ((void*)0));





 oldcxt = MemoryContextSwitchTo(portal->holdContext);

 portal->tupDesc = CreateTupleDescCopy(portal->tupDesc);

 MemoryContextSwitchTo(oldcxt);




 MarkPortalActive(portal);




 saveActivePortal = ActivePortal;
 saveResourceOwner = CurrentResourceOwner;
 savePortalContext = PortalContext;
 PG_TRY();
 {
  ActivePortal = portal;
  if (portal->resowner)
   CurrentResourceOwner = portal->resowner;
  PortalContext = portal->portalContext;

  MemoryContextSwitchTo(PortalContext);

  PushActiveSnapshot(queryDesc->snapshot);





  ExecutorRewind(queryDesc);






  queryDesc->dest = CreateDestReceiver(DestTuplestore);
  SetTuplestoreDestReceiverParams(queryDesc->dest,
          portal->holdStore,
          portal->holdContext,
          1);


  ExecutorRun(queryDesc, ForwardScanDirection, 0L, 0);

  queryDesc->dest->rDestroy(queryDesc->dest);
  queryDesc->dest = ((void*)0);




  portal->queryDesc = ((void*)0);
  ExecutorFinish(queryDesc);
  ExecutorEnd(queryDesc);
  FreeQueryDesc(queryDesc);




  MemoryContextSwitchTo(portal->holdContext);

  if (portal->atEnd)
  {




   while (tuplestore_skiptuples(portal->holdStore, 1000000, 1))
                    ;
  }
  else
  {
   tuplestore_rescan(portal->holdStore);

   if (!tuplestore_skiptuples(portal->holdStore,
            portal->portalPos,
            1))
    elog(ERROR, "unexpected end of tuple stream");
  }
 }
 PG_CATCH();
 {

  MarkPortalFailed(portal);


  ActivePortal = saveActivePortal;
  CurrentResourceOwner = saveResourceOwner;
  PortalContext = savePortalContext;

  PG_RE_THROW();
 }
 PG_END_TRY();

 MemoryContextSwitchTo(oldcxt);


 portal->status = PORTAL_READY;

 ActivePortal = saveActivePortal;
 CurrentResourceOwner = saveResourceOwner;
 PortalContext = savePortalContext;

 PopActiveSnapshot();







 MemoryContextDeleteChildren(portal->portalContext);
}
