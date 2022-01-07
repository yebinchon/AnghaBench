
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ createSubid; int portalPinned; int * cleanup; int name; } ;
struct TYPE_4__ {TYPE_2__* portal; } ;
typedef scalar_t__ SubTransactionId ;
typedef TYPE_1__ PortalHashEnt ;
typedef TYPE_2__* Portal ;
typedef int HASH_SEQ_STATUS ;


 scalar_t__ PointerIsValid (int *) ;
 int PortalDrop (TYPE_2__*,int) ;
 int PortalHashTable ;
 int WARNING ;
 int elog (int ,char*,int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

void
AtSubCleanup_Portals(SubTransactionId mySubid)
{
 HASH_SEQ_STATUS status;
 PortalHashEnt *hentry;

 hash_seq_init(&status, PortalHashTable);

 while ((hentry = (PortalHashEnt *) hash_seq_search(&status)) != ((void*)0))
 {
  Portal portal = hentry->portal;

  if (portal->createSubid != mySubid)
   continue;






  if (portal->portalPinned)
   portal->portalPinned = 0;





  if (PointerIsValid(portal->cleanup))
  {
   elog(WARNING, "skipping cleanup for portal \"%s\"", portal->name);
   portal->cleanup = ((void*)0);
  }


  PortalDrop(portal, 0);
 }
}
