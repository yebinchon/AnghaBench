#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_op_array ;
struct TYPE_5__ {int blocks_count; TYPE_2__* blocks; } ;
typedef  TYPE_1__ zend_cfg ;
struct TYPE_6__ {int flags; } ;
typedef  TYPE_2__ zend_basic_block ;

/* Variables and functions */
 int ZEND_BB_REACHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

void FUNC3(const zend_op_array *op_array, const zend_cfg *cfg)
{
	int j;

	FUNC0(stderr, "\nDOMINATORS-TREE for \"");
	FUNC2(op_array);
	FUNC0(stderr, "\"\n");
	for (j = 0; j < cfg->blocks_count; j++) {
		zend_basic_block *b = cfg->blocks + j;
		if (b->flags & ZEND_BB_REACHABLE) {
			FUNC1(cfg, j, 0);
		}
	}
}