
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* smgr_close ) (TYPE_1__*,scalar_t__) ;} ;
struct TYPE_5__ {size_t smgr_which; int smgr_rnode; int node; struct TYPE_5__** smgr_owner; } ;
typedef TYPE_1__* SMgrRelation ;
typedef scalar_t__ ForkNumber ;


 int ERROR ;
 int HASH_REMOVE ;
 scalar_t__ MAX_FORKNUM ;
 int SMgrRelationHash ;
 int dlist_delete (int *) ;
 int elog (int ,char*) ;
 int * hash_search (int ,void*,int ,int *) ;
 TYPE_3__* smgrsw ;
 int stub1 (TYPE_1__*,scalar_t__) ;

void
smgrclose(SMgrRelation reln)
{
 SMgrRelation *owner;
 ForkNumber forknum;

 for (forknum = 0; forknum <= MAX_FORKNUM; forknum++)
  smgrsw[reln->smgr_which].smgr_close(reln, forknum);

 owner = reln->smgr_owner;

 if (!owner)
  dlist_delete(&reln->node);

 if (hash_search(SMgrRelationHash,
     (void *) &(reln->smgr_rnode),
     HASH_REMOVE, ((void*)0)) == ((void*)0))
  elog(ERROR, "SMgrRelation hashtable corrupted");





 if (owner)
  *owner = ((void*)0);
}
