
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lfs1_t ;
typedef scalar_t__ lfs1_size_t ;
typedef scalar_t__ lfs1_off_t ;
typedef int lfs1_cache_t ;
typedef int lfs1_block_t ;


 int lfs1_cache_read (int *,int *,int const*,int ,scalar_t__,int *,int) ;
 int lfs1_crc (int *,int *,int) ;

__attribute__((used)) static int lfs1_cache_crc(lfs1_t *lfs1, lfs1_cache_t *rcache,
        const lfs1_cache_t *pcache, lfs1_block_t block,
        lfs1_off_t off, lfs1_size_t size, uint32_t *crc) {
    for (lfs1_off_t i = 0; i < size; i++) {
        uint8_t c;
        int err = lfs1_cache_read(lfs1, rcache, pcache,
                block, off+i, &c, 1);
        if (err) {
            return err;
        }

        lfs1_crc(crc, &c, 1);
    }

    return 0;
}
