
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lfs2_mlist {struct lfs2_mlist* next; } ;
struct TYPE_3__ {struct lfs2_mlist* mlist; } ;
typedef TYPE_1__ lfs2_t ;
typedef int lfs2_dir_t ;


 int LFS2_TRACE (char*,void*,...) ;

int lfs2_dir_close(lfs2_t *lfs2, lfs2_dir_t *dir) {
    LFS2_TRACE("lfs2_dir_close(%p, %p)", (void*)lfs2, (void*)dir);

    for (struct lfs2_mlist **p = &lfs2->mlist; *p; p = &(*p)->next) {
        if (*p == (struct lfs2_mlist*)dir) {
            *p = (*p)->next;
            break;
        }
    }

    LFS2_TRACE("lfs2_dir_close -> %d", 0);
    return 0;
}
