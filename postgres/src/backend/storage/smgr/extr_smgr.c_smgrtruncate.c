
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* smgr_truncate ) (TYPE_1__*,scalar_t__,void*) ;} ;
struct TYPE_5__ {size_t smgr_which; void* smgr_vm_nblocks; void* smgr_fsm_nblocks; int smgr_rnode; } ;
typedef TYPE_1__* SMgrRelation ;
typedef scalar_t__ ForkNumber ;
typedef void* BlockNumber ;


 int CacheInvalidateSmgr (int ) ;
 int DropRelFileNodeBuffers (int ,scalar_t__*,int,void**) ;
 scalar_t__ FSM_FORKNUM ;
 scalar_t__ VISIBILITYMAP_FORKNUM ;
 TYPE_4__* smgrsw ;
 int stub1 (TYPE_1__*,scalar_t__,void*) ;

void
smgrtruncate(SMgrRelation reln, ForkNumber *forknum, int nforks, BlockNumber *nblocks)
{
 int i;





 DropRelFileNodeBuffers(reln->smgr_rnode, forknum, nforks, nblocks);
 CacheInvalidateSmgr(reln->smgr_rnode);


 for (i = 0; i < nforks; i++)
 {
  smgrsw[reln->smgr_which].smgr_truncate(reln, forknum[i], nblocks[i]);
  if (forknum[i] == FSM_FORKNUM)
   reln->smgr_fsm_nblocks = nblocks[i];
  if (forknum[i] == VISIBILITYMAP_FORKNUM)
   reln->smgr_vm_nblocks = nblocks[i];
 }
}
