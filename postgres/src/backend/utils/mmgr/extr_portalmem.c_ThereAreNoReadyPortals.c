
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_3__ {TYPE_2__* portal; } ;
typedef TYPE_1__ PortalHashEnt ;
typedef TYPE_2__* Portal ;
typedef int HASH_SEQ_STATUS ;


 scalar_t__ PORTAL_READY ;
 int PortalHashTable ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

bool
ThereAreNoReadyPortals(void)
{
 HASH_SEQ_STATUS status;
 PortalHashEnt *hentry;

 hash_seq_init(&status, PortalHashTable);

 while ((hentry = (PortalHashEnt *) hash_seq_search(&status)) != ((void*)0))
 {
  Portal portal = hentry->portal;

  if (portal->status == PORTAL_READY)
   return 0;
 }

 return 1;
}
