
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* cfg; } ;
typedef TYPE_1__ lfs2_t ;
typedef scalar_t__ lfs2_block_t ;
struct TYPE_5__ {scalar_t__ block_count; int (* erase ) (TYPE_2__*,scalar_t__) ;} ;


 int LFS2_ASSERT (int) ;
 int stub1 (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int lfs2_bd_erase(lfs2_t *lfs2, lfs2_block_t block) {
    LFS2_ASSERT(block < lfs2->cfg->block_count);
    int err = lfs2->cfg->erase(lfs2->cfg, block);
    LFS2_ASSERT(err <= 0);
    return err;
}
