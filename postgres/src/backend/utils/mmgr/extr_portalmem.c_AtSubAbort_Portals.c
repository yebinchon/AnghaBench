
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ createSubid; scalar_t__ activeSubid; scalar_t__ status; int portalContext; int * resowner; int (* cleanup ) (TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_2__* portal; } ;
typedef scalar_t__ SubTransactionId ;
typedef int ResourceOwner ;
typedef TYPE_1__ PortalHashEnt ;
typedef TYPE_2__* Portal ;
typedef int HASH_SEQ_STATUS ;


 int MarkPortalFailed (TYPE_2__*) ;
 int MemoryContextDeleteChildren (int ) ;
 scalar_t__ PORTAL_ACTIVE ;
 scalar_t__ PORTAL_FAILED ;
 scalar_t__ PORTAL_READY ;
 scalar_t__ PointerIsValid (int (*) (TYPE_2__*)) ;
 int PortalHashTable ;
 int PortalReleaseCachedPlan (TYPE_2__*) ;
 int ResourceOwnerNewParent (int *,int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int stub1 (TYPE_2__*) ;

void
AtSubAbort_Portals(SubTransactionId mySubid,
       SubTransactionId parentSubid,
       ResourceOwner myXactOwner,
       ResourceOwner parentXactOwner)
{
 HASH_SEQ_STATUS status;
 PortalHashEnt *hentry;

 hash_seq_init(&status, PortalHashTable);

 while ((hentry = (PortalHashEnt *) hash_seq_search(&status)) != ((void*)0))
 {
  Portal portal = hentry->portal;


  if (portal->createSubid != mySubid)
  {

   if (portal->activeSubid == mySubid)
   {

    portal->activeSubid = parentSubid;
    if (portal->status == PORTAL_ACTIVE)
     MarkPortalFailed(portal);
    if (portal->status == PORTAL_FAILED && portal->resowner)
    {
     ResourceOwnerNewParent(portal->resowner, myXactOwner);
     portal->resowner = ((void*)0);
    }
   }

   continue;
  }
  if (portal->status == PORTAL_READY ||
   portal->status == PORTAL_ACTIVE)
   MarkPortalFailed(portal);





  if (PointerIsValid(portal->cleanup))
  {
   portal->cleanup(portal);
   portal->cleanup = ((void*)0);
  }


  PortalReleaseCachedPlan(portal);






  portal->resowner = ((void*)0);







  MemoryContextDeleteChildren(portal->portalContext);
 }
}
