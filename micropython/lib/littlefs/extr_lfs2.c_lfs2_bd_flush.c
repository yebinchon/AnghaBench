
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* cfg; } ;
typedef TYPE_1__ lfs2_t ;
typedef int lfs2_size_t ;
struct TYPE_14__ {scalar_t__ block; int buffer; int off; int size; } ;
typedef TYPE_2__ lfs2_cache_t ;
struct TYPE_15__ {scalar_t__ block_count; int (* prog ) (TYPE_3__*,scalar_t__,int ,int ,int ) ;int prog_size; } ;


 int LFS2_ASSERT (int) ;
 scalar_t__ LFS2_BLOCK_INLINE ;
 scalar_t__ LFS2_BLOCK_NULL ;
 int LFS2_CMP_EQ ;
 int LFS2_ERR_CORRUPT ;
 int lfs2_alignup (int ,int ) ;
 int lfs2_bd_cmp (TYPE_1__*,int *,TYPE_2__*,int ,scalar_t__,int ,int ,int ) ;
 int lfs2_cache_drop (TYPE_1__*,TYPE_2__*) ;
 int lfs2_cache_zero (TYPE_1__*,TYPE_2__*) ;
 int stub1 (TYPE_3__*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int lfs2_bd_flush(lfs2_t *lfs2,
        lfs2_cache_t *pcache, lfs2_cache_t *rcache, bool validate) {
    if (pcache->block != LFS2_BLOCK_NULL && pcache->block != LFS2_BLOCK_INLINE) {
        LFS2_ASSERT(pcache->block < lfs2->cfg->block_count);
        lfs2_size_t diff = lfs2_alignup(pcache->size, lfs2->cfg->prog_size);
        int err = lfs2->cfg->prog(lfs2->cfg, pcache->block,
                pcache->off, pcache->buffer, diff);
        LFS2_ASSERT(err <= 0);
        if (err) {
            return err;
        }

        if (validate) {

            lfs2_cache_drop(lfs2, rcache);
            int res = lfs2_bd_cmp(lfs2,
                    ((void*)0), rcache, diff,
                    pcache->block, pcache->off, pcache->buffer, diff);
            if (res < 0) {
                return res;
            }

            if (res != LFS2_CMP_EQ) {
                return LFS2_ERR_CORRUPT;
            }
        }

        lfs2_cache_zero(lfs2, pcache);
    }

    return 0;
}
