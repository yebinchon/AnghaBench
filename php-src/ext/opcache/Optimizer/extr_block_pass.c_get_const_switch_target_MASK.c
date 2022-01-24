#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_op_array ;
struct TYPE_9__ {scalar_t__ opcode; } ;
typedef  TYPE_1__ zend_op ;
struct TYPE_10__ {int* map; } ;
typedef  TYPE_2__ zend_cfg ;
struct TYPE_11__ {int* successors; int successors_count; } ;
typedef  TYPE_3__ zend_basic_block ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ IS_LONG ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ ZEND_SWITCH_LONG ; 
 scalar_t__ ZEND_SWITCH_STRING ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(zend_cfg *cfg, zend_op_array *op_array, zend_basic_block *block, zend_op *opline, zval *val) {
	HashTable *jumptable = FUNC3(FUNC2(opline));
	zval *zv;
	if ((opline->opcode == ZEND_SWITCH_LONG && FUNC6(val) != IS_LONG)
			|| (opline->opcode == ZEND_SWITCH_STRING && FUNC6(val) != IS_STRING)) {
		/* fallback to next block */
		return block->successors[block->successors_count - 1];
	}
	if (FUNC6(val) == IS_LONG) {
		zv = FUNC8(jumptable, FUNC4(val));
	} else {
		FUNC0(FUNC6(val) == IS_STRING);
		zv = FUNC7(jumptable, FUNC5(val));
	}
	if (!zv) {
		/* default */
		return block->successors[block->successors_count - 2];
	}
	return cfg->map[FUNC1(op_array, opline, FUNC4(zv))];
}