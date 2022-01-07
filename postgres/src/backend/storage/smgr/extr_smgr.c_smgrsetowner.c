
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** smgr_owner; int node; } ;
typedef TYPE_1__* SMgrRelation ;


 int Assert (int ) ;
 int dlist_delete (int *) ;

void
smgrsetowner(SMgrRelation *owner, SMgrRelation reln)
{

 Assert(owner != ((void*)0));
 if (reln->smgr_owner)
  *(reln->smgr_owner) = ((void*)0);
 else
  dlist_delete(&reln->node);


 reln->smgr_owner = owner;
 *owner = reln;
}
