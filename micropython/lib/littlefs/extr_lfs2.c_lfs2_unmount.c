
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_t ;


 int LFS2_TRACE (char*,int) ;
 int lfs2_deinit (int *) ;

int lfs2_unmount(lfs2_t *lfs2) {
    LFS2_TRACE("lfs2_unmount(%p)", (void*)lfs2);
    int err = lfs2_deinit(lfs2);
    LFS2_TRACE("lfs2_unmount -> %d", err);
    return err;
}
