
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int atStart; int atEnd; int visible; int name; int portalContext; int creation_time; int cursorOptions; int strategy; int createSubid; int activeSubid; int cleanup; int status; int resowner; } ;
typedef TYPE_1__* Portal ;


 int ALLOCSET_SMALL_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int AssertArg (int ) ;
 int CURSOR_OPT_NO_SCROLL ;
 int CurTransactionResourceOwner ;
 int ERRCODE_DUPLICATE_CURSOR ;
 int ERROR ;
 int GetCurrentStatementStartTimestamp () ;
 int GetCurrentSubTransactionId () ;
 TYPE_1__* GetPortalByName (char const*) ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int MemoryContextSetIdentifier (int ,int ) ;
 int PORTAL_MULTI_QUERY ;
 int PORTAL_NEW ;
 int PointerIsValid (char const*) ;
 int PortalCleanup ;
 int PortalDrop (TYPE_1__*,int) ;
 int PortalHashTableInsert (TYPE_1__*,char const*) ;
 scalar_t__ PortalIsValid (TYPE_1__*) ;
 int ResourceOwnerCreate (int ,char*) ;
 int TopPortalContext ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

Portal
CreatePortal(const char *name, bool allowDup, bool dupSilent)
{
 Portal portal;

 AssertArg(PointerIsValid(name));

 portal = GetPortalByName(name);
 if (PortalIsValid(portal))
 {
  if (!allowDup)
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_CURSOR),
      errmsg("cursor \"%s\" already exists", name)));
  if (!dupSilent)
   ereport(WARNING,
     (errcode(ERRCODE_DUPLICATE_CURSOR),
      errmsg("closing existing cursor \"%s\"",
       name)));
  PortalDrop(portal, 0);
 }


 portal = (Portal) MemoryContextAllocZero(TopPortalContext, sizeof *portal);


 portal->portalContext = AllocSetContextCreate(TopPortalContext,
              "PortalContext",
              ALLOCSET_SMALL_SIZES);


 portal->resowner = ResourceOwnerCreate(CurTransactionResourceOwner,
             "Portal");


 portal->status = PORTAL_NEW;
 portal->cleanup = PortalCleanup;
 portal->createSubid = GetCurrentSubTransactionId();
 portal->activeSubid = portal->createSubid;
 portal->strategy = PORTAL_MULTI_QUERY;
 portal->cursorOptions = CURSOR_OPT_NO_SCROLL;
 portal->atStart = 1;
 portal->atEnd = 1;
 portal->visible = 1;
 portal->creation_time = GetCurrentStatementStartTimestamp();


 PortalHashTableInsert(portal, name);


 MemoryContextSetIdentifier(portal->portalContext, portal->name);

 return portal;
}
