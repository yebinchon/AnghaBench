#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ dest; scalar_t__ dest_limit; int btype; int bfinal; int /*<<< orphan*/  dtree; int /*<<< orphan*/  ltree; } ;
typedef  TYPE_1__ TINF_DATA ;

/* Variables and functions */
 int TINF_DATA_ERROR ; 
 int TINF_DONE ; 
 int TINF_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

int FUNC7(TINF_DATA *d)
{
    do {
        int res;

        /* start a new block */
        if (d->btype == -1) {
next_blk:
            /* read final block flag */
            d->bfinal = FUNC3(d);
            /* read block type (2 bits) */
            d->btype = FUNC6(d, 2, 0);

            #if UZLIB_CONF_DEBUG_LOG >= 1
            printf("Started new block: type=%d final=%d\n", d->btype, d->bfinal);
            #endif

            if (d->btype == 1) {
                /* build fixed huffman trees */
                FUNC1(&d->ltree, &d->dtree);
            } else if (d->btype == 2) {
                /* decode trees from stream */
                res = FUNC2(d, &d->ltree, &d->dtree);
                if (res != TINF_OK) {
                    return res;
                }
            }
        }

        /* process current block */
        switch (d->btype)
        {
        case 0:
            /* decompress uncompressed block */
            res = FUNC5(d);
            break;
        case 1:
        case 2:
            /* decompress block with fixed/dynamic huffman trees */
            /* trees were decoded previously, so it's the same routine for both */
            res = FUNC4(d, &d->ltree, &d->dtree);
            break;
        default:
            return TINF_DATA_ERROR;
        }

        if (res == TINF_DONE && !d->bfinal) {
            /* the block has ended (without producing more data), but we
               can't return without data, so start procesing next block */
            goto next_blk;
        }

        if (res != TINF_OK) {
            return res;
        }

    } while (d->dest < d->dest_limit);

    return TINF_OK;
}