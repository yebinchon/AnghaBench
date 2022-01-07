
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs1_t ;
typedef scalar_t__ lfs1_soff_t ;
typedef int lfs1_file_t ;


 int LFS1_SEEK_SET ;
 scalar_t__ lfs1_file_seek (int *,int *,int ,int ) ;

int lfs1_file_rewind(lfs1_t *lfs1, lfs1_file_t *file) {
    lfs1_soff_t res = lfs1_file_seek(lfs1, file, 0, LFS1_SEEK_SET);
    if (res < 0) {
        return res;
    }

    return 0;
}
