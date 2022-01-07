
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* smgr_writeback ) (TYPE_1__*,int ,int ,int ) ;} ;
struct TYPE_5__ {size_t smgr_which; } ;
typedef TYPE_1__* SMgrRelation ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 TYPE_4__* smgrsw ;
 int stub1 (TYPE_1__*,int ,int ,int ) ;

void
smgrwriteback(SMgrRelation reln, ForkNumber forknum, BlockNumber blocknum,
     BlockNumber nblocks)
{
 smgrsw[reln->smgr_which].smgr_writeback(reln, forknum, blocknum,
           nblocks);
}
