
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_tag_t ;
typedef int lfs2_size_t ;


 scalar_t__ lfs2_tag_dsize (int ) ;

__attribute__((used)) static int lfs2_dir_commit_size(void *p, lfs2_tag_t tag, const void *buffer) {
    lfs2_size_t *size = p;
    (void)buffer;

    *size += lfs2_tag_dsize(tag);
    return 0;
}
