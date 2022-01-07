
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_2__* portal; } ;
typedef TYPE_1__ PortalHashEnt ;
typedef TYPE_2__* Portal ;
typedef int HASH_SEQ_STATUS ;


 scalar_t__ PORTAL_ACTIVE ;
 int PortalDrop (TYPE_2__*,int) ;
 int * PortalHashTable ;
 int hash_seq_init (int *,int *) ;
 TYPE_1__* hash_seq_search (int *) ;
 int hash_seq_term (int *) ;

void
PortalHashTableDeleteAll(void)
{
 HASH_SEQ_STATUS status;
 PortalHashEnt *hentry;

 if (PortalHashTable == ((void*)0))
  return;

 hash_seq_init(&status, PortalHashTable);
 while ((hentry = hash_seq_search(&status)) != ((void*)0))
 {
  Portal portal = hentry->portal;


  if (portal->status == PORTAL_ACTIVE)
   continue;

  PortalDrop(portal, 0);


  hash_seq_term(&status);
  hash_seq_init(&status, PortalHashTable);
 }
}
