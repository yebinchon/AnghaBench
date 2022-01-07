
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int autoHeld; scalar_t__ strategy; scalar_t__ status; scalar_t__ portalPinned; } ;
struct TYPE_4__ {TYPE_2__* portal; } ;
typedef TYPE_1__ PortalHashEnt ;
typedef TYPE_2__* Portal ;
typedef int HASH_SEQ_STATUS ;


 int ERRCODE_INVALID_TRANSACTION_TERMINATION ;
 int ERROR ;
 int HoldPortal (TYPE_2__*) ;
 scalar_t__ PORTAL_ONE_SELECT ;
 scalar_t__ PORTAL_READY ;
 int PortalHashTable ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

void
HoldPinnedPortals(void)
{
 HASH_SEQ_STATUS status;
 PortalHashEnt *hentry;

 hash_seq_init(&status, PortalHashTable);

 while ((hentry = (PortalHashEnt *) hash_seq_search(&status)) != ((void*)0))
 {
  Portal portal = hentry->portal;

  if (portal->portalPinned && !portal->autoHeld)
  {
   if (portal->strategy != PORTAL_ONE_SELECT)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_TRANSACTION_TERMINATION),
       errmsg("cannot perform transaction commands inside a cursor loop that is not read-only")));


   if (portal->status != PORTAL_READY)
    elog(ERROR, "pinned portal is not ready to be auto-held");

   HoldPortal(portal);
   portal->autoHeld = 1;
  }
 }
}
