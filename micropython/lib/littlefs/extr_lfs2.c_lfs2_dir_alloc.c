
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rcache; } ;
typedef TYPE_1__ lfs2_t ;
struct TYPE_8__ {int rev; int off; int erased; int split; void** tail; scalar_t__ count; void* etag; int * pair; } ;
typedef TYPE_2__ lfs2_mdir_t ;


 void* LFS2_BLOCK_NULL ;
 int LFS2_ERR_CORRUPT ;
 int lfs2_alloc (TYPE_1__*,int *) ;
 int lfs2_bd_read (TYPE_1__*,int *,int *,int,int ,int ,int*,int) ;
 int lfs2_fromle32 (int) ;

__attribute__((used)) static int lfs2_dir_alloc(lfs2_t *lfs2, lfs2_mdir_t *dir) {

    for (int i = 0; i < 2; i++) {
        int err = lfs2_alloc(lfs2, &dir->pair[(i+1)%2]);
        if (err) {
            return err;
        }
    }



    int err = lfs2_bd_read(lfs2,
            ((void*)0), &lfs2->rcache, sizeof(dir->rev),
            dir->pair[0], 0, &dir->rev, sizeof(dir->rev));
    dir->rev = lfs2_fromle32(dir->rev);
    if (err && err != LFS2_ERR_CORRUPT) {
        return err;
    }


    dir->rev += dir->rev & 1;


    dir->off = sizeof(dir->rev);
    dir->etag = LFS2_BLOCK_NULL;
    dir->count = 0;
    dir->tail[0] = LFS2_BLOCK_NULL;
    dir->tail[1] = LFS2_BLOCK_NULL;
    dir->erased = 0;
    dir->split = 0;


    return 0;
}
