#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_17__ {int op2_use; int result_def; int op2_use_chain; } ;
typedef  TYPE_2__ zend_ssa_op ;
struct TYPE_18__ {int opcode; } ;
typedef  TYPE_3__ zend_op ;
typedef  int zend_bool ;
struct TYPE_16__ {TYPE_5__* ssa; int /*<<< orphan*/  op_array; } ;
struct TYPE_19__ {TYPE_1__ scdf; } ;
typedef  TYPE_4__ sccp_ctx ;
struct TYPE_20__ {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  ZEND_FETCH_CLASS 128 
 int ZEND_INSTANCEOF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool FUNC9(
		sccp_ctx *ctx, zend_op *opline, zend_ssa_op *ssa_op, int var, zval *value) {
	if (ssa_op->op2_use == var && FUNC4(ctx->scdf.op_array, opline, ssa_op)) {
		zval zv;
		FUNC2(&zv, value);
		if (FUNC5(ctx->scdf.op_array, opline, &zv)) {
			return 1;
		} else {
			switch (opline->opcode) {
				case ZEND_FETCH_CLASS:
					if (FUNC3(zv) == IS_STRING) {
						FUNC1((opline + 1)->opcode == ZEND_INSTANCEOF);
						FUNC1(ssa_op->result_def == (ssa_op + 1)->op2_use);
						if (FUNC5(ctx->scdf.op_array, opline + 1, &zv)) {
							zend_ssa_op *next_op = ssa_op + 1;
							FUNC7(ctx->scdf.ssa, next_op - ctx->scdf.ssa->ops, next_op->op2_use);
							next_op->op2_use = -1;
							next_op->op2_use_chain = -1;
							FUNC6(ctx->scdf.ssa, ssa_op);
							FUNC0(opline);
							return 1;
						}
					}
				default:
					break;
			}
			FUNC8(&zv);
		}
	}
	return 0;
}