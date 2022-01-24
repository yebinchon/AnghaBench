#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ulong ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; scalar_t__ idx; } ;
struct TYPE_5__ {TYPE_1__ result; struct TYPE_5__** branches; } ;
typedef  TYPE_2__ phpdbg_btree_branch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1(phpdbg_btree_branch *branch, zend_ulong depth) {
	if (branch) {
		if (depth--) {
			FUNC1(branch->branches[0], depth);
			FUNC1(branch->branches[1], depth);
		} else {
			FUNC0(stderr, "%p: %d\n", (void *) branch->result.idx, branch->result.ptr);
		}
	}
}