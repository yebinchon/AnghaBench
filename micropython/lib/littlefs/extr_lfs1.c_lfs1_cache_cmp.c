
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint8_t ;
typedef int lfs1_t ;
typedef size_t lfs1_size_t ;
typedef size_t lfs1_off_t ;
typedef int lfs1_cache_t ;
typedef int lfs1_block_t ;


 int lfs1_cache_read (int *,int *,int const*,int ,size_t,scalar_t__ const*,int) ;

__attribute__((used)) static int lfs1_cache_cmp(lfs1_t *lfs1, lfs1_cache_t *rcache,
        const lfs1_cache_t *pcache, lfs1_block_t block,
        lfs1_off_t off, const void *buffer, lfs1_size_t size) {
    const uint8_t *data = buffer;

    for (lfs1_off_t i = 0; i < size; i++) {
        uint8_t c;
        int err = lfs1_cache_read(lfs1, rcache, pcache,
                block, off+i, &c, 1);
        if (err) {
            return err;
        }

        if (c != data[i]) {
            return 0;
        }
    }

    return 1;
}
