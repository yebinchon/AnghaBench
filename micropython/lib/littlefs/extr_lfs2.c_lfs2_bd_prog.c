
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_1__* cfg; } ;
typedef TYPE_2__ lfs2_t ;
typedef scalar_t__ lfs2_size_t ;
typedef scalar_t__ lfs2_off_t ;
struct TYPE_12__ {scalar_t__ block; scalar_t__ off; scalar_t__ size; int * buffer; } ;
typedef TYPE_3__ lfs2_cache_t ;
typedef scalar_t__ lfs2_block_t ;
struct TYPE_10__ {scalar_t__ block_size; scalar_t__ cache_size; int prog_size; } ;


 int LFS2_ASSERT (int) ;
 scalar_t__ LFS2_BLOCK_NULL ;
 scalar_t__ lfs2_aligndown (scalar_t__,int ) ;
 int lfs2_bd_flush (TYPE_2__*,TYPE_3__*,TYPE_3__*,int) ;
 scalar_t__ lfs2_max (scalar_t__,scalar_t__) ;
 scalar_t__ lfs2_min (scalar_t__,scalar_t__) ;
 int memcpy (int *,int const*,scalar_t__) ;

__attribute__((used)) static int lfs2_bd_prog(lfs2_t *lfs2,
        lfs2_cache_t *pcache, lfs2_cache_t *rcache, bool validate,
        lfs2_block_t block, lfs2_off_t off,
        const void *buffer, lfs2_size_t size) {
    const uint8_t *data = buffer;
    LFS2_ASSERT(block != LFS2_BLOCK_NULL);
    LFS2_ASSERT(off + size <= lfs2->cfg->block_size);

    while (size > 0) {
        if (block == pcache->block &&
                off >= pcache->off &&
                off < pcache->off + lfs2->cfg->cache_size) {

            lfs2_size_t diff = lfs2_min(size,
                    lfs2->cfg->cache_size - (off-pcache->off));
            memcpy(&pcache->buffer[off-pcache->off], data, diff);

            data += diff;
            off += diff;
            size -= diff;

            pcache->size = lfs2_max(pcache->size, off - pcache->off);
            if (pcache->size == lfs2->cfg->cache_size) {

                int err = lfs2_bd_flush(lfs2, pcache, rcache, validate);
                if (err) {
                    return err;
                }
            }

            continue;
        }



        LFS2_ASSERT(pcache->block == LFS2_BLOCK_NULL);


        pcache->block = block;
        pcache->off = lfs2_aligndown(off, lfs2->cfg->prog_size);
        pcache->size = 0;
    }

    return 0;
}
