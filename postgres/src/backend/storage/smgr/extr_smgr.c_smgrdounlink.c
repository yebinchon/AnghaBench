
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* smgr_unlink ) (int ,int ,int) ;int (* smgr_close ) (TYPE_1__*,scalar_t__) ;} ;
struct TYPE_5__ {int smgr_which; int smgr_rnode; } ;
typedef TYPE_1__* SMgrRelation ;
typedef int RelFileNodeBackend ;
typedef scalar_t__ ForkNumber ;


 int CacheInvalidateSmgr (int ) ;
 int DropRelFileNodesAllBuffers (int *,int) ;
 int InvalidForkNumber ;
 scalar_t__ MAX_FORKNUM ;
 TYPE_3__* smgrsw ;
 int stub1 (TYPE_1__*,scalar_t__) ;
 int stub2 (int ,int ,int) ;

void
smgrdounlink(SMgrRelation reln, bool isRedo)
{
 RelFileNodeBackend rnode = reln->smgr_rnode;
 int which = reln->smgr_which;
 ForkNumber forknum;


 for (forknum = 0; forknum <= MAX_FORKNUM; forknum++)
  smgrsw[which].smgr_close(reln, forknum);





 DropRelFileNodesAllBuffers(&rnode, 1);
 CacheInvalidateSmgr(rnode);
 smgrsw[which].smgr_unlink(rnode, InvalidForkNumber, isRedo);
}
