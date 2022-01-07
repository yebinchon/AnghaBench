
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tag; } ;
struct TYPE_6__ {TYPE_2__ gpending; TYPE_2__ gdelta; } ;
typedef TYPE_1__ lfs2_t ;
typedef scalar_t__ int8_t ;


 int lfs2_gstate_hasorphans (TYPE_2__*) ;
 int lfs2_gstate_xororphans (TYPE_2__*,TYPE_2__*,int ) ;

__attribute__((used)) static void lfs2_fs_preporphans(lfs2_t *lfs2, int8_t orphans) {
    lfs2->gpending.tag += orphans;
    lfs2_gstate_xororphans(&lfs2->gdelta, &lfs2->gpending,
            lfs2_gstate_hasorphans(&lfs2->gpending));
    lfs2_gstate_xororphans(&lfs2->gpending, &lfs2->gpending,
            lfs2_gstate_hasorphans(&lfs2->gpending));
}
