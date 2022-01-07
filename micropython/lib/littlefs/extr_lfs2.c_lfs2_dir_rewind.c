
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lfs2_t ;
struct TYPE_5__ {int * pair; } ;
struct TYPE_4__ {scalar_t__ pos; scalar_t__ id; int * head; TYPE_3__ m; } ;
typedef TYPE_1__ lfs2_dir_t ;


 int LFS2_TRACE (char*,int,...) ;
 int lfs2_dir_fetch (int *,TYPE_3__*,int *) ;

int lfs2_dir_rewind(lfs2_t *lfs2, lfs2_dir_t *dir) {
    LFS2_TRACE("lfs2_dir_rewind(%p, %p)", (void*)lfs2, (void*)dir);

    int err = lfs2_dir_fetch(lfs2, &dir->m, dir->head);
    if (err) {
        LFS2_TRACE("lfs2_dir_rewind -> %d", err);
        return err;
    }

    dir->m.pair[0] = dir->head[0];
    dir->m.pair[1] = dir->head[1];
    dir->id = 0;
    dir->pos = 0;
    LFS2_TRACE("lfs2_dir_rewind -> %d", 0);
    return 0;
}
