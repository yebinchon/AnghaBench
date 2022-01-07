
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_size_t ;
typedef int lfs2_block_t ;



__attribute__((used)) static int lfs2_fs_size_count(void *p, lfs2_block_t block) {
    (void)block;
    lfs2_size_t *size = p;
    *size += 1;
    return 0;
}
