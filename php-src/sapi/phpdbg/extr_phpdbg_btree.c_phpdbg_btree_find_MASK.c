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
typedef  int zend_ulong ;
typedef  int /*<<< orphan*/  phpdbg_btree_result ;
struct TYPE_4__ {int /*<<< orphan*/  result; scalar_t__* branches; } ;
typedef  TYPE_1__ phpdbg_btree_branch ;
struct TYPE_5__ {int depth; TYPE_1__* branch; } ;
typedef  TYPE_2__ phpdbg_btree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

phpdbg_btree_result *FUNC1(phpdbg_btree *tree, zend_ulong idx) {
	phpdbg_btree_branch *branch = tree->branch;
	int i = tree->depth - 1;

	if (branch == NULL) {
		return NULL;
	}

	do {
		if ((idx >> i) % 2 == 1) {
		 	if (branch->branches[1]) {
				FUNC0(1);
			} else {
				return NULL;
			}
		} else {
			if (branch->branches[0]) {
				FUNC0(0);
			} else {
				return NULL;
			}
		}
	} while (i--);

	return &branch->result;
}