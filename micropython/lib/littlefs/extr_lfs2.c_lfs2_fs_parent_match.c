
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lfs2_fs_parent_match {int pair; TYPE_2__* lfs2; } ;
struct lfs2_diskoff {int off; int block; } ;
typedef int lfs2_tag_t ;
struct TYPE_5__ {TYPE_1__* cfg; int rcache; int pcache; } ;
typedef TYPE_2__ lfs2_t ;
typedef int lfs2_block_t ;
typedef int child ;
struct TYPE_4__ {int block_size; } ;


 int LFS2_CMP_EQ ;
 int LFS2_CMP_LT ;
 int lfs2_bd_read (TYPE_2__*,int *,int *,int ,int ,int ,int **,int) ;
 scalar_t__ lfs2_pair_cmp (int *,int ) ;
 int lfs2_pair_fromle32 (int *) ;

__attribute__((used)) static int lfs2_fs_parent_match(void *data,
        lfs2_tag_t tag, const void *buffer) {
    struct lfs2_fs_parent_match *find = data;
    lfs2_t *lfs2 = find->lfs2;
    const struct lfs2_diskoff *disk = buffer;
    (void)tag;

    lfs2_block_t child[2];
    int err = lfs2_bd_read(lfs2,
            &lfs2->pcache, &lfs2->rcache, lfs2->cfg->block_size,
            disk->block, disk->off, &child, sizeof(child));
    if (err) {
        return err;
    }

    lfs2_pair_fromle32(child);
    return (lfs2_pair_cmp(child, find->pair) == 0) ? LFS2_CMP_EQ : LFS2_CMP_LT;
}
