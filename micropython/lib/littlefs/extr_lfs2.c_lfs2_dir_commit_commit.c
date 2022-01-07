
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfs2_dir_commit_commit {int commit; int lfs2; } ;
typedef int lfs2_tag_t ;


 int lfs2_dir_commitattr (int ,int ,int ,void const*) ;

__attribute__((used)) static int lfs2_dir_commit_commit(void *p, lfs2_tag_t tag, const void *buffer) {
    struct lfs2_dir_commit_commit *commit = p;
    return lfs2_dir_commitattr(commit->lfs2, commit->commit, tag, buffer);
}
