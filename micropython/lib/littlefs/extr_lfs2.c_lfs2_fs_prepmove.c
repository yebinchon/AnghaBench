
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int gpending; int gdelta; } ;
typedef TYPE_1__ lfs2_t ;
typedef int lfs2_block_t ;


 int lfs2_gstate_xormove (int *,int *,int ,int const*) ;

__attribute__((used)) static void lfs2_fs_prepmove(lfs2_t *lfs2,
        uint16_t id, const lfs2_block_t pair[2]) {
    lfs2_gstate_xormove(&lfs2->gdelta, &lfs2->gpending, id, pair);
    lfs2_gstate_xormove(&lfs2->gpending, &lfs2->gpending, id, pair);
}
