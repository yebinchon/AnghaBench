
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfs2_info {int dummy; } ;
typedef int lfs2_t ;
typedef int lfs2_stag_t ;
typedef int lfs2_mdir_t ;


 int LFS2_TRACE (char*,int,...) ;
 int lfs2_dir_find (int *,int *,char const**,int *) ;
 int lfs2_dir_getinfo (int *,int *,int ,struct lfs2_info*) ;
 int lfs2_tag_id (int) ;

int lfs2_stat(lfs2_t *lfs2, const char *path, struct lfs2_info *info) {
    LFS2_TRACE("lfs2_stat(%p, \"%s\", %p)", (void*)lfs2, path, (void*)info);
    lfs2_mdir_t cwd;
    lfs2_stag_t tag = lfs2_dir_find(lfs2, &cwd, &path, ((void*)0));
    if (tag < 0) {
        LFS2_TRACE("lfs2_stat -> %d", tag);
        return (int)tag;
    }

    int err = lfs2_dir_getinfo(lfs2, &cwd, lfs2_tag_id(tag), info);
    LFS2_TRACE("lfs2_stat -> %d", err);
    return err;
}
