
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lfs1_t ;
typedef int lfs1_off_t ;
struct TYPE_6__ {int size; int tail; } ;
struct TYPE_7__ {int pos; int off; TYPE_1__ d; } ;
typedef TYPE_2__ lfs1_dir_t ;


 int LFS1_ERR_INVAL ;
 int lfs1_dir_fetch (int *,TYPE_2__*,int ) ;
 int lfs1_dir_rewind (int *,TYPE_2__*) ;

int lfs1_dir_seek(lfs1_t *lfs1, lfs1_dir_t *dir, lfs1_off_t off) {

    int err = lfs1_dir_rewind(lfs1, dir);
    if (err) {
        return err;
    }
    dir->pos = off;

    while (off > (0x7fffffff & dir->d.size)) {
        off -= 0x7fffffff & dir->d.size;
        if (!(0x80000000 & dir->d.size)) {
            return LFS1_ERR_INVAL;
        }

        err = lfs1_dir_fetch(lfs1, dir, dir->d.tail);
        if (err) {
            return err;
        }
    }

    dir->off = off;
    return 0;
}
