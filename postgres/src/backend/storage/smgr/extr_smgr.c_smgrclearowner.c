
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int node; struct TYPE_4__** smgr_owner; } ;
typedef TYPE_1__* SMgrRelation ;


 int dlist_push_tail (int *,int *) ;
 int unowned_relns ;

void
smgrclearowner(SMgrRelation *owner, SMgrRelation reln)
{

 if (reln->smgr_owner != owner)
  return;


 *owner = ((void*)0);


 reln->smgr_owner = ((void*)0);


 dlist_push_tail(&unowned_relns, &reln->node);
}
