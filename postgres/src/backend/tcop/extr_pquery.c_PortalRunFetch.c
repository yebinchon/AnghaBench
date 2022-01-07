
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_9__ {int strategy; int status; int holdStore; int portalContext; scalar_t__ resowner; int run_once; } ;
typedef scalar_t__ ResourceOwner ;
typedef TYPE_1__* Portal ;
typedef int MemoryContext ;
typedef int FetchDirection ;
typedef int DestReceiver ;


 TYPE_1__* ActivePortal ;
 int Assert (int) ;
 int AssertArg (int ) ;
 scalar_t__ CurrentResourceOwner ;
 int DoPortalRunFetch (TYPE_1__*,int ,long,int *) ;
 int ERROR ;
 int FillPortalStore (TYPE_1__*,int) ;
 int MarkPortalActive (TYPE_1__*) ;
 int MarkPortalFailed (TYPE_1__*) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;



 int PORTAL_READY ;

 int PortalContext ;
 int PortalIsValid (TYPE_1__*) ;
 int elog (int ,char*) ;

uint64
PortalRunFetch(Portal portal,
      FetchDirection fdirection,
      long count,
      DestReceiver *dest)
{
 uint64 result;
 Portal saveActivePortal;
 ResourceOwner saveResourceOwner;
 MemoryContext savePortalContext;
 MemoryContext oldContext;

 AssertArg(PortalIsValid(portal));




 MarkPortalActive(portal);


 Assert(!portal->run_once);




 saveActivePortal = ActivePortal;
 saveResourceOwner = CurrentResourceOwner;
 savePortalContext = PortalContext;
 PG_TRY();
 {
  ActivePortal = portal;
  if (portal->resowner)
   CurrentResourceOwner = portal->resowner;
  PortalContext = portal->portalContext;

  oldContext = MemoryContextSwitchTo(PortalContext);

  switch (portal->strategy)
  {
   case 129:
    result = DoPortalRunFetch(portal, fdirection, count, dest);
    break;

   case 130:
   case 131:
   case 128:





    if (!portal->holdStore)
     FillPortalStore(portal, 0 );




    result = DoPortalRunFetch(portal, fdirection, count, dest);
    break;

   default:
    elog(ERROR, "unsupported portal strategy");
    result = 0;
    break;
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

 MemoryContextSwitchTo(oldContext);


 portal->status = PORTAL_READY;

 ActivePortal = saveActivePortal;
 CurrentResourceOwner = saveResourceOwner;
 PortalContext = savePortalContext;

 return result;
}
