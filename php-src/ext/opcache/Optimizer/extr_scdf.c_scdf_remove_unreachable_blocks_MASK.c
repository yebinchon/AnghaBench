#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int blocks_count; TYPE_1__* blocks; } ;
struct TYPE_10__ {TYPE_2__ cfg; } ;
typedef  TYPE_3__ zend_ssa ;
struct TYPE_11__ {int /*<<< orphan*/  op_array; int /*<<< orphan*/  executable_blocks; TYPE_3__* ssa; } ;
typedef  TYPE_4__ scdf_ctx ;
struct TYPE_8__ {int flags; scalar_t__ len; } ;

/* Variables and functions */
 int ZEND_BB_REACHABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 

int FUNC3(scdf_ctx *scdf) {
	zend_ssa *ssa = scdf->ssa;
	int i;
	int removed_ops = 0;
	for (i = 0; i < ssa->cfg.blocks_count; i++) {
		if (!FUNC1(scdf->executable_blocks, i)
				&& (ssa->cfg.blocks[i].flags & ZEND_BB_REACHABLE)
				&& !FUNC0(scdf, i)) {
			removed_ops += ssa->cfg.blocks[i].len;
			FUNC2(scdf->op_array, ssa, i);
		}
	}
	return removed_ops;
}