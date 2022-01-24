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
struct TYPE_8__ {int bType; int /*<<< orphan*/  bFinal; int /*<<< orphan*/  dtree; int /*<<< orphan*/  ltree; scalar_t__ destSize; } ;
typedef  TYPE_1__ UZLIB_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int UZLIB_DATA_ERROR ; 
 int UZLIB_DONE ; 
 int UZLIB_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 (UZLIB_DATA *d) {
  do {
    int res;

    /* start a new block */
    if (d->bType == -1) {
      next_blk:
      /* read final block flag */
      d->bFinal = FUNC3(d);
      /* read block type (2 bits) */
      d->bType = FUNC6(d, 2, 0);

      FUNC0("Started new block: type=%d final=%d\n", d->bType, d->bFinal);

      if (d->bType == 1) {
        /* build fixed huffman trees */
        FUNC1(&d->ltree, &d->dtree);
      } else if (d->bType == 2) {
        /* decode trees from stream */
        res = FUNC2(d, &d->ltree, &d->dtree);
        if (res != UZLIB_OK)
          return res;
      }
    }

    /* process current block */
    switch (d->bType) {
    case 0:
      /* decompress uncompressed block */
      res = FUNC5(d);
      break;
    case 1:
    case 2:
      /* decompress block with fixed or dynamic huffman trees.  These */
      /* trees were decoded previously, so it's the same routine for both */
      res = FUNC4(d, &d->ltree, &d->dtree);
      break;
    default:
      return UZLIB_DATA_ERROR;
    }

    if (res == UZLIB_DONE && !d->bFinal) {
      /* the block has ended (without producing more data), but we
         can't return without data, so start procesing next block */
      goto next_blk;
    }

    if (res != UZLIB_OK)
      return res;

  } while (--d->destSize);

  return UZLIB_OK;
}