
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lfs1_t ;
struct TYPE_4__ {int rev; int size; int* tail; } ;
struct TYPE_5__ {int off; TYPE_1__ d; int * pair; } ;
typedef TYPE_2__ lfs1_dir_t ;


 int LFS1_ERR_CORRUPT ;
 int lfs1_alloc (int *,int *) ;
 int lfs1_bd_read (int *,int ,int ,int*,int) ;
 int lfs1_fromle32 (int) ;

__attribute__((used)) static int lfs1_dir_alloc(lfs1_t *lfs1, lfs1_dir_t *dir) {

    for (int i = 0; i < 2; i++) {
        int err = lfs1_alloc(lfs1, &dir->pair[i]);
        if (err) {
            return err;
        }
    }



    int err = lfs1_bd_read(lfs1, dir->pair[0], 0, &dir->d.rev, 4);
    if (err && err != LFS1_ERR_CORRUPT) {
        return err;
    }

    if (err != LFS1_ERR_CORRUPT) {
        dir->d.rev = lfs1_fromle32(dir->d.rev);
    }


    dir->d.rev += 1;
    dir->d.size = sizeof(dir->d)+4;
    dir->d.tail[0] = 0xffffffff;
    dir->d.tail[1] = 0xffffffff;
    dir->off = sizeof(dir->d);


    return 0;
}
