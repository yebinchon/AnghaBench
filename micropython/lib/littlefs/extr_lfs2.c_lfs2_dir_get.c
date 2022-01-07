
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_tag_t ;
typedef int lfs2_t ;
typedef int lfs2_stag_t ;
typedef int lfs2_mdir_t ;


 int lfs2_dir_getslice (int *,int const*,int ,int ,int ,void*,int ) ;
 int lfs2_tag_size (int ) ;

__attribute__((used)) static lfs2_stag_t lfs2_dir_get(lfs2_t *lfs2, const lfs2_mdir_t *dir,
        lfs2_tag_t gmask, lfs2_tag_t gtag, void *buffer) {
    return lfs2_dir_getslice(lfs2, dir,
            gmask, gtag,
            0, buffer, lfs2_tag_size(gtag));
}
