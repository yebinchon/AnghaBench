
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lfs2_t ;
struct TYPE_4__ {int* tail; } ;
typedef TYPE_1__ lfs2_mdir_t ;
typedef int lfs2_block_t ;


 int LFS2_ERR_NOENT ;
 int lfs2_dir_fetch (int *,TYPE_1__*,int*) ;
 scalar_t__ lfs2_pair_cmp (int*,int const*) ;
 int lfs2_pair_isnull (int*) ;

__attribute__((used)) static int lfs2_fs_pred(lfs2_t *lfs2,
        const lfs2_block_t pair[2], lfs2_mdir_t *pdir) {

    pdir->tail[0] = 0;
    pdir->tail[1] = 1;
    while (!lfs2_pair_isnull(pdir->tail)) {
        if (lfs2_pair_cmp(pdir->tail, pair) == 0) {
            return 0;
        }

        int err = lfs2_dir_fetch(lfs2, pdir, pdir->tail);
        if (err) {
            return err;
        }
    }

    return LFS2_ERR_NOENT;
}
