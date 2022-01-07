
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* cfg; } ;
typedef TYPE_1__ lfs2_t ;
typedef int lfs2_cache_t ;
struct TYPE_7__ {int (* sync ) (TYPE_2__*) ;} ;


 int LFS2_ASSERT (int) ;
 int lfs2_bd_flush (TYPE_1__*,int *,int *,int) ;
 int lfs2_cache_drop (TYPE_1__*,int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int lfs2_bd_sync(lfs2_t *lfs2,
        lfs2_cache_t *pcache, lfs2_cache_t *rcache, bool validate) {
    lfs2_cache_drop(lfs2, rcache);

    int err = lfs2_bd_flush(lfs2, pcache, rcache, validate);
    if (err) {
        return err;
    }

    err = lfs2->cfg->sync(lfs2->cfg);
    LFS2_ASSERT(err <= 0);
    return err;
}
