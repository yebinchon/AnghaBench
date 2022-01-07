
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_t ;
typedef int lfs2_mdir_t ;
typedef int lfs2_block_t ;


 scalar_t__ lfs2_dir_fetchmatch (int *,int *,int const*,int,int ,int *,int *,int *) ;

__attribute__((used)) static int lfs2_dir_fetch(lfs2_t *lfs2,
        lfs2_mdir_t *dir, const lfs2_block_t pair[2]) {


    return (int)lfs2_dir_fetchmatch(lfs2, dir, pair, -1, 0, ((void*)0), ((void*)0), ((void*)0));
}
