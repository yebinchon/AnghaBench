
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* cfg; } ;
typedef TYPE_1__ lfs1_t ;
typedef int lfs1_block_t ;
struct TYPE_5__ {int (* erase ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int lfs1_bd_erase(lfs1_t *lfs1, lfs1_block_t block) {
    return lfs1->cfg->erase(lfs1->cfg, block);
}
