
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* dirs; } ;
typedef TYPE_1__ lfs1_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ lfs1_dir_t ;



int lfs1_dir_close(lfs1_t *lfs1, lfs1_dir_t *dir) {

    for (lfs1_dir_t **p = &lfs1->dirs; *p; p = &(*p)->next) {
        if (*p == dir) {
            *p = dir->next;
            break;
        }
    }

    return 0;
}
