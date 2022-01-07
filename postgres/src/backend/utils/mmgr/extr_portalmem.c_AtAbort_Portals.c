
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ status; scalar_t__ createSubid; int portalContext; int * resowner; int (* cleanup ) (TYPE_2__*) ;scalar_t__ autoHeld; } ;
struct TYPE_7__ {TYPE_2__* portal; } ;
typedef TYPE_1__ PortalHashEnt ;
typedef TYPE_2__* Portal ;
typedef int HASH_SEQ_STATUS ;


 scalar_t__ InvalidSubTransactionId ;
 int MarkPortalFailed (TYPE_2__*) ;
 int MemoryContextDeleteChildren (int ) ;
 scalar_t__ PORTAL_ACTIVE ;
 scalar_t__ PORTAL_READY ;
 scalar_t__ PointerIsValid (int (*) (TYPE_2__*)) ;
 int PortalHashTable ;
 int PortalReleaseCachedPlan (TYPE_2__*) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 scalar_t__ shmem_exit_inprogress ;
 int stub1 (TYPE_2__*) ;

void
AtAbort_Portals(void)
{
 HASH_SEQ_STATUS status;
 PortalHashEnt *hentry;

 hash_seq_init(&status, PortalHashTable);

 while ((hentry = (PortalHashEnt *) hash_seq_search(&status)) != ((void*)0))
 {
  Portal portal = hentry->portal;





  if (portal->status == PORTAL_ACTIVE && shmem_exit_inprogress)
   MarkPortalFailed(portal);




  if (portal->createSubid == InvalidSubTransactionId)
   continue;






  if (portal->autoHeld)
   continue;







  if (portal->status == PORTAL_READY)
   MarkPortalFailed(portal);





  if (PointerIsValid(portal->cleanup))
  {
   portal->cleanup(portal);
   portal->cleanup = ((void*)0);
  }


  PortalReleaseCachedPlan(portal);






  portal->resowner = ((void*)0);







  if (portal->status != PORTAL_ACTIVE)
   MemoryContextDeleteChildren(portal->portalContext);
 }
}
