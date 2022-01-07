
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_12__ {int (* smgr_open ) (TYPE_1__*) ;} ;
struct TYPE_11__ {int keysize; int entrysize; } ;
struct TYPE_10__ {int backend; int node; } ;
struct TYPE_9__ {size_t smgr_which; int node; void* smgr_vm_nblocks; void* smgr_fsm_nblocks; void* smgr_targblock; int * smgr_owner; } ;
typedef int SMgrRelationData ;
typedef TYPE_1__* SMgrRelation ;
typedef TYPE_2__ RelFileNodeBackend ;
typedef int RelFileNode ;
typedef TYPE_3__ HASHCTL ;
typedef int BackendId ;


 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 void* InvalidBlockNumber ;
 int MemSet (TYPE_3__*,int ,int) ;
 int * SMgrRelationHash ;
 int dlist_init (int *) ;
 int dlist_push_tail (int *,int *) ;
 int * hash_create (char*,int,TYPE_3__*,int) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 TYPE_5__* smgrsw ;
 int stub1 (TYPE_1__*) ;
 int unowned_relns ;

SMgrRelation
smgropen(RelFileNode rnode, BackendId backend)
{
 RelFileNodeBackend brnode;
 SMgrRelation reln;
 bool found;

 if (SMgrRelationHash == ((void*)0))
 {

  HASHCTL ctl;

  MemSet(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(RelFileNodeBackend);
  ctl.entrysize = sizeof(SMgrRelationData);
  SMgrRelationHash = hash_create("smgr relation table", 400,
            &ctl, HASH_ELEM | HASH_BLOBS);
  dlist_init(&unowned_relns);
 }


 brnode.node = rnode;
 brnode.backend = backend;
 reln = (SMgrRelation) hash_search(SMgrRelationHash,
           (void *) &brnode,
           HASH_ENTER, &found);


 if (!found)
 {

  reln->smgr_owner = ((void*)0);
  reln->smgr_targblock = InvalidBlockNumber;
  reln->smgr_fsm_nblocks = InvalidBlockNumber;
  reln->smgr_vm_nblocks = InvalidBlockNumber;
  reln->smgr_which = 0;


  smgrsw[reln->smgr_which].smgr_open(reln);


  dlist_push_tail(&unowned_relns, &reln->node);
 }

 return reln;
}
