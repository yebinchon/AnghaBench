
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lfs2_diskoff {int off; int block; } ;
struct lfs2_dir_find_match {scalar_t__ size; int name; TYPE_1__* lfs2; } ;
typedef int lfs2_tag_t ;
struct TYPE_3__ {int rcache; } ;
typedef TYPE_1__ lfs2_t ;
typedef int lfs2_size_t ;


 int LFS2_CMP_EQ ;
 int LFS2_CMP_GT ;
 int LFS2_CMP_LT ;
 int lfs2_bd_cmp (TYPE_1__*,int *,int *,int ,int ,int ,int ,int ) ;
 int lfs2_min (scalar_t__,scalar_t__) ;
 scalar_t__ lfs2_tag_size (int ) ;

__attribute__((used)) static int lfs2_dir_find_match(void *data,
        lfs2_tag_t tag, const void *buffer) {
    struct lfs2_dir_find_match *name = data;
    lfs2_t *lfs2 = name->lfs2;
    const struct lfs2_diskoff *disk = buffer;


    lfs2_size_t diff = lfs2_min(name->size, lfs2_tag_size(tag));
    int res = lfs2_bd_cmp(lfs2,
            ((void*)0), &lfs2->rcache, diff,
            disk->block, disk->off, name->name, diff);
    if (res != LFS2_CMP_EQ) {
        return res;
    }


    if (name->size != lfs2_tag_size(tag)) {
        return (name->size < lfs2_tag_size(tag)) ? LFS2_CMP_LT : LFS2_CMP_GT;
    }


    return LFS2_CMP_EQ;
}
