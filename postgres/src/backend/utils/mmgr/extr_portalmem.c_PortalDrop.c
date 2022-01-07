
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ status; scalar_t__ portalContext; scalar_t__ holdContext; int * holdStore; int * resowner; int * holdSnapshot; int (* cleanup ) (TYPE_1__*) ;int name; scalar_t__ portalPinned; } ;
typedef TYPE_1__* Portal ;
typedef scalar_t__ MemoryContext ;


 int AssertArg (int ) ;
 int ERRCODE_INVALID_CURSOR_STATE ;
 int ERROR ;
 int MemoryContextDelete (scalar_t__) ;
 scalar_t__ MemoryContextSwitchTo (scalar_t__) ;
 scalar_t__ PORTAL_ACTIVE ;
 scalar_t__ PORTAL_FAILED ;
 scalar_t__ PointerIsValid (int (*) (TYPE_1__*)) ;
 int PortalHashTableDelete (TYPE_1__*) ;
 int PortalIsValid (TYPE_1__*) ;
 int PortalReleaseCachedPlan (TYPE_1__*) ;
 int RESOURCE_RELEASE_AFTER_LOCKS ;
 int RESOURCE_RELEASE_BEFORE_LOCKS ;
 int RESOURCE_RELEASE_LOCKS ;
 int ResourceOwnerDelete (int *) ;
 int ResourceOwnerRelease (int *,int ,int,int) ;
 int UnregisterSnapshotFromOwner (int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int pfree (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;
 int tuplestore_end (int *) ;

void
PortalDrop(Portal portal, bool isTopCommit)
{
 AssertArg(PortalIsValid(portal));





 if (portal->portalPinned)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_CURSOR_STATE),
     errmsg("cannot drop pinned portal \"%s\"", portal->name)));




 if (portal->status == PORTAL_ACTIVE)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_CURSOR_STATE),
     errmsg("cannot drop active portal \"%s\"", portal->name)));
 if (PointerIsValid(portal->cleanup))
 {
  portal->cleanup(portal);
  portal->cleanup = ((void*)0);
 }







 PortalHashTableDelete(portal);


 PortalReleaseCachedPlan(portal);







 if (portal->holdSnapshot)
 {
  if (portal->resowner)
   UnregisterSnapshotFromOwner(portal->holdSnapshot,
          portal->resowner);
  portal->holdSnapshot = ((void*)0);
 }
 if (portal->resowner &&
  (!isTopCommit || portal->status == PORTAL_FAILED))
 {
  bool isCommit = (portal->status != PORTAL_FAILED);

  ResourceOwnerRelease(portal->resowner,
        RESOURCE_RELEASE_BEFORE_LOCKS,
        isCommit, 0);
  ResourceOwnerRelease(portal->resowner,
        RESOURCE_RELEASE_LOCKS,
        isCommit, 0);
  ResourceOwnerRelease(portal->resowner,
        RESOURCE_RELEASE_AFTER_LOCKS,
        isCommit, 0);
  ResourceOwnerDelete(portal->resowner);
 }
 portal->resowner = ((void*)0);






 if (portal->holdStore)
 {
  MemoryContext oldcontext;

  oldcontext = MemoryContextSwitchTo(portal->holdContext);
  tuplestore_end(portal->holdStore);
  MemoryContextSwitchTo(oldcontext);
  portal->holdStore = ((void*)0);
 }


 if (portal->holdContext)
  MemoryContextDelete(portal->holdContext);


 MemoryContextDelete(portal->portalContext);


 pfree(portal);
}
