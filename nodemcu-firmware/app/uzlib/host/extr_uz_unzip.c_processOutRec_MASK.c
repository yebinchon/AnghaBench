#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ndx; scalar_t__ written; scalar_t__ len; int /*<<< orphan*/ * fullBlkCB; int /*<<< orphan*/  fout; int /*<<< orphan*/  crc; int /*<<< orphan*/ * block; } ;

/* Variables and functions */
 int /*<<< orphan*/  UZLIB_DATA_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WRITE_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* out ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC4 (void) {
  int len = (out->ndx % WRITE_BLOCKSIZE) ? out->ndx % WRITE_BLOCKSIZE :
                                           WRITE_BLOCKSIZE;
  if (FUNC2(out->block[0], 1, len, out->fout) != len)
    FUNC0(UZLIB_DATA_ERROR);

  out->crc = FUNC3(out->block[0], len, out->crc);

  out->written += len;
  if (out->written == out->len) {
    FUNC1(out->fout);
    out->fullBlkCB = NULL;
  }
  return 1;
}