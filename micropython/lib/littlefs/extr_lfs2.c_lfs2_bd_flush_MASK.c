#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* cfg; } ;
typedef  TYPE_1__ lfs2_t ;
typedef  int /*<<< orphan*/  lfs2_size_t ;
struct TYPE_14__ {scalar_t__ block; int /*<<< orphan*/  buffer; int /*<<< orphan*/  off; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ lfs2_cache_t ;
struct TYPE_15__ {scalar_t__ block_count; int (* prog ) (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  prog_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LFS2_BLOCK_INLINE ; 
 scalar_t__ LFS2_BLOCK_NULL ; 
 int LFS2_CMP_EQ ; 
 int LFS2_ERR_CORRUPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC5 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(lfs2_t *lfs2,
        lfs2_cache_t *pcache, lfs2_cache_t *rcache, bool validate) {
    if (pcache->block != LFS2_BLOCK_NULL && pcache->block != LFS2_BLOCK_INLINE) {
        FUNC0(pcache->block < lfs2->cfg->block_count);
        lfs2_size_t diff = FUNC1(pcache->size, lfs2->cfg->prog_size);
        int err = lfs2->cfg->prog(lfs2->cfg, pcache->block,
                pcache->off, pcache->buffer, diff);
        FUNC0(err <= 0);
        if (err) {
            return err;
        }

        if (validate) {
            // check data on disk
            FUNC3(lfs2, rcache);
            int res = FUNC2(lfs2,
                    NULL, rcache, diff,
                    pcache->block, pcache->off, pcache->buffer, diff);
            if (res < 0) {
                return res;
            }

            if (res != LFS2_CMP_EQ) {
                return LFS2_ERR_CORRUPT;
            }
        }

        FUNC4(lfs2, pcache);
    }

    return 0;
}