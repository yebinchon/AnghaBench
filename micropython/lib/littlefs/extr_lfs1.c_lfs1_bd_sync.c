
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* cfg; int pcache; int rcache; } ;
typedef TYPE_1__ lfs1_t ;
struct TYPE_7__ {int (* sync ) (TYPE_2__*) ;} ;


 int lfs1_cache_drop (TYPE_1__*,int *) ;
 int lfs1_cache_flush (TYPE_1__*,int *,int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int lfs1_bd_sync(lfs1_t *lfs1) {
    lfs1_cache_drop(lfs1, &lfs1->rcache);

    int err = lfs1_cache_flush(lfs1, &lfs1->pcache, ((void*)0));
    if (err) {
        return err;
    }

    return lfs1->cfg->sync(lfs1->cfg);
}
