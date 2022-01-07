
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_t ;


 int lfs2_fs_demove (int *) ;
 int lfs2_fs_deorphan (int *) ;

__attribute__((used)) static int lfs2_fs_forceconsistency(lfs2_t *lfs2) {
    int err = lfs2_fs_demove(lfs2);
    if (err) {
        return err;
    }

    err = lfs2_fs_deorphan(lfs2);
    if (err) {
        return err;
    }

    return 0;
}
