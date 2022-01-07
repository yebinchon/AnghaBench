
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ createSubid; scalar_t__ activeSubid; scalar_t__ resowner; } ;
struct TYPE_3__ {TYPE_2__* portal; } ;
typedef scalar_t__ SubTransactionId ;
typedef int ResourceOwner ;
typedef TYPE_1__ PortalHashEnt ;
typedef TYPE_2__* Portal ;
typedef int HASH_SEQ_STATUS ;


 int PortalHashTable ;
 int ResourceOwnerNewParent (scalar_t__,int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

void
AtSubCommit_Portals(SubTransactionId mySubid,
     SubTransactionId parentSubid,
     ResourceOwner parentXactOwner)
{
 HASH_SEQ_STATUS status;
 PortalHashEnt *hentry;

 hash_seq_init(&status, PortalHashTable);

 while ((hentry = (PortalHashEnt *) hash_seq_search(&status)) != ((void*)0))
 {
  Portal portal = hentry->portal;

  if (portal->createSubid == mySubid)
  {
   portal->createSubid = parentSubid;
   if (portal->resowner)
    ResourceOwnerNewParent(portal->resowner, parentXactOwner);
  }
  if (portal->activeSubid == mySubid)
   portal->activeSubid = parentSubid;
 }
}
