
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_9__ {int atEnd; int atStart; scalar_t__ portalPos; int cursorOptions; int run_once; scalar_t__ holdStore; TYPE_2__* queryDesc; } ;
struct TYPE_8__ {TYPE_1__* estate; int snapshot; int * dest; } ;
struct TYPE_7__ {scalar_t__ es_processed; } ;
typedef int ScanDirection ;
typedef TYPE_2__ QueryDesc ;
typedef TYPE_3__* Portal ;
typedef int DestReceiver ;


 int Assert (int) ;
 int BackwardScanDirection ;
 int CURSOR_OPT_NO_SCROLL ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int ExecutorRun (TYPE_2__*,int ,scalar_t__,int ) ;
 long FETCH_ALL ;
 int ForwardScanDirection ;
 int NoMovementScanDirection ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 scalar_t__ RunFromStore (TYPE_3__*,int ,scalar_t__,int *) ;
 int ScanDirectionIsNoMovement (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static uint64
PortalRunSelect(Portal portal,
    bool forward,
    long count,
    DestReceiver *dest)
{
 QueryDesc *queryDesc;
 ScanDirection direction;
 uint64 nprocessed;





 queryDesc = portal->queryDesc;


 Assert(queryDesc || portal->holdStore);







 if (queryDesc)
  queryDesc->dest = dest;
 if (forward)
 {
  if (portal->atEnd || count <= 0)
  {
   direction = NoMovementScanDirection;
   count = 0;
  }
  else
   direction = ForwardScanDirection;


  if (count == FETCH_ALL)
   count = 0;

  if (portal->holdStore)
   nprocessed = RunFromStore(portal, direction, (uint64) count, dest);
  else
  {
   PushActiveSnapshot(queryDesc->snapshot);
   ExecutorRun(queryDesc, direction, (uint64) count,
      portal->run_once);
   nprocessed = queryDesc->estate->es_processed;
   PopActiveSnapshot();
  }

  if (!ScanDirectionIsNoMovement(direction))
  {
   if (nprocessed > 0)
    portal->atStart = 0;
   if (count == 0 || nprocessed < (uint64) count)
    portal->atEnd = 1;
   portal->portalPos += nprocessed;
  }
 }
 else
 {
  if (portal->cursorOptions & CURSOR_OPT_NO_SCROLL)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("cursor can only scan forward"),
      errhint("Declare it with SCROLL option to enable backward scan.")));

  if (portal->atStart || count <= 0)
  {
   direction = NoMovementScanDirection;
   count = 0;
  }
  else
   direction = BackwardScanDirection;


  if (count == FETCH_ALL)
   count = 0;

  if (portal->holdStore)
   nprocessed = RunFromStore(portal, direction, (uint64) count, dest);
  else
  {
   PushActiveSnapshot(queryDesc->snapshot);
   ExecutorRun(queryDesc, direction, (uint64) count,
      portal->run_once);
   nprocessed = queryDesc->estate->es_processed;
   PopActiveSnapshot();
  }

  if (!ScanDirectionIsNoMovement(direction))
  {
   if (nprocessed > 0 && portal->atEnd)
   {
    portal->atEnd = 0;
    portal->portalPos++;
   }
   if (count == 0 || nprocessed < (uint64) count)
   {
    portal->atStart = 1;
    portal->portalPos = 0;
   }
   else
   {
    portal->portalPos -= nprocessed;
   }
  }
 }

 return nprocessed;
}
