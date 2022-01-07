
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint8_t ;
typedef int lfs2_t ;
typedef size_t lfs2_size_t ;
typedef size_t lfs2_off_t ;
typedef int lfs2_cache_t ;
typedef int lfs2_block_t ;


 int LFS2_CMP_EQ ;
 int LFS2_CMP_GT ;
 int LFS2_CMP_LT ;
 int lfs2_bd_read (int *,int const*,int *,size_t,int ,size_t,scalar_t__ const*,int) ;

__attribute__((used)) static int lfs2_bd_cmp(lfs2_t *lfs2,
        const lfs2_cache_t *pcache, lfs2_cache_t *rcache, lfs2_size_t hint,
        lfs2_block_t block, lfs2_off_t off,
        const void *buffer, lfs2_size_t size) {
    const uint8_t *data = buffer;

    for (lfs2_off_t i = 0; i < size; i++) {
        uint8_t dat;
        int err = lfs2_bd_read(lfs2,
                pcache, rcache, hint-i,
                block, off+i, &dat, 1);
        if (err) {
            return err;
        }

        if (dat != data[i]) {
            return (dat < data[i]) ? LFS2_CMP_LT : LFS2_CMP_GT;
        }
    }

    return LFS2_CMP_EQ;
}
