
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* cfg; } ;
typedef TYPE_1__ lfs1_t ;
struct TYPE_12__ {int block; int buffer; int off; } ;
typedef TYPE_2__ lfs1_cache_t ;
struct TYPE_13__ {int (* prog ) (TYPE_3__*,int,int ,int ,int ) ;int prog_size; } ;


 int LFS1_ERR_CORRUPT ;
 int lfs1_cache_cmp (TYPE_1__*,TYPE_2__*,int *,int,int ,int ,int ) ;
 int lfs1_cache_zero (TYPE_1__*,TYPE_2__*) ;
 int stub1 (TYPE_3__*,int,int ,int ,int ) ;

__attribute__((used)) static int lfs1_cache_flush(lfs1_t *lfs1,
        lfs1_cache_t *pcache, lfs1_cache_t *rcache) {
    if (pcache->block != 0xffffffff) {
        int err = lfs1->cfg->prog(lfs1->cfg, pcache->block,
                pcache->off, pcache->buffer, lfs1->cfg->prog_size);
        if (err) {
            return err;
        }

        if (rcache) {
            int res = lfs1_cache_cmp(lfs1, rcache, ((void*)0), pcache->block,
                    pcache->off, pcache->buffer, lfs1->cfg->prog_size);
            if (res < 0) {
                return res;
            }

            if (!res) {
                return LFS1_ERR_CORRUPT;
            }
        }

        lfs1_cache_zero(lfs1, pcache);
    }

    return 0;
}
