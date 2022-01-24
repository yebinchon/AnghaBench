#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {TYPE_3__* cfg; } ;
typedef  TYPE_1__ lfs1_t ;
typedef  int lfs1_size_t ;
typedef  size_t lfs1_off_t ;
struct TYPE_13__ {int block; size_t off; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_2__ lfs1_cache_t ;
typedef  int lfs1_block_t ;
struct TYPE_14__ {int block_count; size_t prog_size; int (* prog ) (TYPE_3__*,int,size_t,int /*<<< orphan*/  const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LFS1_ERR_CORRUPT ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (TYPE_3__*,int,size_t,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC6(lfs1_t *lfs1, lfs1_cache_t *pcache,
        lfs1_cache_t *rcache, lfs1_block_t block,
        lfs1_off_t off, const void *buffer, lfs1_size_t size) {
    const uint8_t *data = buffer;
    FUNC0(block < lfs1->cfg->block_count);

    while (size > 0) {
        if (block == pcache->block && off >= pcache->off &&
                off < pcache->off + lfs1->cfg->prog_size) {
            // is already in pcache?
            lfs1_size_t diff = FUNC3(size,
                    lfs1->cfg->prog_size - (off-pcache->off));
            FUNC4(&pcache->buffer[off-pcache->off], data, diff);

            data += diff;
            off += diff;
            size -= diff;

            if (off % lfs1->cfg->prog_size == 0) {
                // eagerly flush out pcache if we fill up
                int err = FUNC2(lfs1, pcache, rcache);
                if (err) {
                    return err;
                }
            }

            continue;
        }

        // pcache must have been flushed, either by programming and
        // entire block or manually flushing the pcache
        FUNC0(pcache->block == 0xffffffff);

        if (off % lfs1->cfg->prog_size == 0 &&
                size >= lfs1->cfg->prog_size) {
            // bypass pcache?
            lfs1_size_t diff = size - (size % lfs1->cfg->prog_size);
            int err = lfs1->cfg->prog(lfs1->cfg, block, off, data, diff);
            if (err) {
                return err;
            }

            if (rcache) {
                int res = FUNC1(lfs1, rcache, NULL,
                        block, off, data, diff);
                if (res < 0) {
                    return res;
                }

                if (!res) {
                    return LFS1_ERR_CORRUPT;
                }
            }

            data += diff;
            off += diff;
            size -= diff;
            continue;
        }

        // prepare pcache, first condition can no longer fail
        pcache->block = block;
        pcache->off = off - (off % lfs1->cfg->prog_size);
    }

    return 0;
}