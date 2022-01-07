
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* cfg; } ;
typedef TYPE_2__ lfs2_t ;
struct TYPE_8__ {int block; int buffer; } ;
typedef TYPE_3__ lfs2_cache_t ;
struct TYPE_6__ {int cache_size; } ;


 int LFS2_BLOCK_NULL ;
 int memset (int ,int,int ) ;

__attribute__((used)) static inline void lfs2_cache_zero(lfs2_t *lfs2, lfs2_cache_t *pcache) {

    memset(pcache->buffer, 0xff, lfs2->cfg->cache_size);
    pcache->block = LFS2_BLOCK_NULL;
}
