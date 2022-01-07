
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lfs2_t ;
struct TYPE_3__ {int block; } ;
typedef TYPE_1__ lfs2_cache_t ;


 int LFS2_BLOCK_NULL ;

__attribute__((used)) static inline void lfs2_cache_drop(lfs2_t *lfs2, lfs2_cache_t *rcache) {


    (void)lfs2;
    rcache->block = LFS2_BLOCK_NULL;
}
