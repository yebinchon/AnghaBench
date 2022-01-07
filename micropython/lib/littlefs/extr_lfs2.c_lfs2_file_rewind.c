
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_t ;
typedef scalar_t__ lfs2_soff_t ;
typedef int lfs2_file_t ;


 int LFS2_SEEK_SET ;
 int LFS2_TRACE (char*,void*,...) ;
 scalar_t__ lfs2_file_seek (int *,int *,int ,int ) ;

int lfs2_file_rewind(lfs2_t *lfs2, lfs2_file_t *file) {
    LFS2_TRACE("lfs2_file_rewind(%p, %p)", (void*)lfs2, (void*)file);
    lfs2_soff_t res = lfs2_file_seek(lfs2, file, 0, LFS2_SEEK_SET);
    if (res < 0) {
        LFS2_TRACE("lfs2_file_rewind -> %d", res);
        return (int)res;
    }

    LFS2_TRACE("lfs2_file_rewind -> %d", 0);
    return 0;
}
