
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status; int cursorOptions; scalar_t__ createSubid; int * resowner; int * holdSnapshot; int autoHeld; scalar_t__ portalPinned; } ;
struct TYPE_5__ {TYPE_2__* portal; } ;
typedef TYPE_1__ PortalHashEnt ;
typedef TYPE_2__* Portal ;
typedef int HASH_SEQ_STATUS ;


 int CURSOR_OPT_HOLD ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int HoldPortal (TYPE_2__*) ;
 scalar_t__ InvalidSubTransactionId ;
 scalar_t__ PORTAL_ACTIVE ;
 scalar_t__ PORTAL_READY ;
 int PortalDrop (TYPE_2__*,int) ;
 int PortalHashTable ;
 int UnregisterSnapshotFromOwner (int *,int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int hash_seq_term (int *) ;

bool
PreCommit_Portals(bool isPrepare)
{
 bool result = 0;
 HASH_SEQ_STATUS status;
 PortalHashEnt *hentry;

 hash_seq_init(&status, PortalHashTable);

 while ((hentry = (PortalHashEnt *) hash_seq_search(&status)) != ((void*)0))
 {
  Portal portal = hentry->portal;






  if (portal->portalPinned && !portal->autoHeld)
   elog(ERROR, "cannot commit while a portal is pinned");
  if (portal->status == PORTAL_ACTIVE)
  {
   if (portal->holdSnapshot)
   {
    if (portal->resowner)
     UnregisterSnapshotFromOwner(portal->holdSnapshot,
            portal->resowner);
    portal->holdSnapshot = ((void*)0);
   }
   portal->resowner = ((void*)0);
   continue;
  }


  if ((portal->cursorOptions & CURSOR_OPT_HOLD) &&
   portal->createSubid != InvalidSubTransactionId &&
   portal->status == PORTAL_READY)
  {
   if (isPrepare)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot PREPARE a transaction that has created a cursor WITH HOLD")));

   HoldPortal(portal);


   result = 1;
  }
  else if (portal->createSubid == InvalidSubTransactionId)
  {




   continue;
  }
  else
  {

   PortalDrop(portal, 1);


   result = 1;
  }






  hash_seq_term(&status);
  hash_seq_init(&status, PortalHashTable);
 }

 return result;
}
