#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lfs2_tag_t ;
struct TYPE_9__ {TYPE_1__* cfg; } ;
typedef  TYPE_2__ lfs2_t ;
typedef  scalar_t__ lfs2_size_t ;
typedef  scalar_t__ lfs2_off_t ;
typedef  int /*<<< orphan*/  lfs2_mdir_t ;
struct TYPE_10__ {scalar_t__ block; scalar_t__ off; scalar_t__ size; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_3__ lfs2_cache_t ;
struct TYPE_8__ {scalar_t__ block_size; scalar_t__ cache_size; int /*<<< orphan*/  read_size; } ;

/* Variables and functions */
 scalar_t__ LFS2_BLOCK_INLINE ; 
 int LFS2_ERR_CORRUPT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC5(lfs2_t *lfs2, const lfs2_mdir_t *dir,
        const lfs2_cache_t *pcache, lfs2_cache_t *rcache, lfs2_size_t hint,
        lfs2_tag_t gmask, lfs2_tag_t gtag,
        lfs2_off_t off, void *buffer, lfs2_size_t size) {
    uint8_t *data = buffer;
    if (off+size > lfs2->cfg->block_size) {
        return LFS2_ERR_CORRUPT;
    }

    while (size > 0) {
        lfs2_size_t diff = size;

        if (pcache && pcache->block == LFS2_BLOCK_INLINE &&
                off < pcache->off + pcache->size) {
            if (off >= pcache->off) {
                // is already in pcache?
                diff = FUNC3(diff, pcache->size - (off-pcache->off));
                FUNC4(data, &pcache->buffer[off-pcache->off], diff);

                data += diff;
                off += diff;
                size -= diff;
                continue;
            }

            // pcache takes priority
            diff = FUNC3(diff, pcache->off-off);
        }

        if (rcache->block == LFS2_BLOCK_INLINE &&
                off < rcache->off + rcache->size) {
            if (off >= rcache->off) {
                // is already in rcache?
                diff = FUNC3(diff, rcache->size - (off-rcache->off));
                FUNC4(data, &rcache->buffer[off-rcache->off], diff);

                data += diff;
                off += diff;
                size -= diff;
                continue;
            }

            // rcache takes priority
            diff = FUNC3(diff, rcache->off-off);
        }

        // load to cache, first condition can no longer fail
        rcache->block = LFS2_BLOCK_INLINE;
        rcache->off = FUNC0(off, lfs2->cfg->read_size);
        rcache->size = FUNC3(FUNC1(off+hint, lfs2->cfg->read_size),
                lfs2->cfg->cache_size);
        int err = FUNC2(lfs2, dir, gmask, gtag,
                rcache->off, rcache->buffer, rcache->size);
        if (err < 0) {
            return err;
        }
    }

    return 0;
}