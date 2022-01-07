
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct lfs2_commit {int off; int crc; int block; } ;
struct TYPE_4__ {int rcache; int pcache; } ;
typedef TYPE_1__ lfs2_t ;
typedef scalar_t__ lfs2_size_t ;


 int lfs2_bd_prog (TYPE_1__*,int *,int *,int,int ,int ,int const*,scalar_t__) ;
 int lfs2_crc (int ,void const*,scalar_t__) ;

__attribute__((used)) static int lfs2_dir_commitprog(lfs2_t *lfs2, struct lfs2_commit *commit,
        const void *buffer, lfs2_size_t size) {
    int err = lfs2_bd_prog(lfs2,
            &lfs2->pcache, &lfs2->rcache, 0,
            commit->block, commit->off ,
            (const uint8_t*)buffer, size);
    if (err) {
        return err;
    }

    commit->crc = lfs2_crc(commit->crc, buffer, size);
    commit->off += size;
    return 0;
}
