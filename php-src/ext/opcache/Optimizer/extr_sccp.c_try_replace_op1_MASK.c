#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_16__ {int op1_use; int op2_use; int op2_def; int op2_use_chain; } ;
typedef  TYPE_3__ zend_ssa_op ;
struct TYPE_14__ {void* constant; } ;
struct TYPE_17__ {int opcode; int /*<<< orphan*/  op2_type; TYPE_1__ op1; void* op1_type; } ;
typedef  TYPE_4__ zend_op ;
typedef  int zend_bool ;
struct TYPE_15__ {TYPE_6__* ssa; int /*<<< orphan*/  op_array; } ;
struct TYPE_18__ {TYPE_2__ scdf; } ;
typedef  TYPE_5__ sccp_ctx ;
struct TYPE_19__ {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 void* IS_CONST ; 
 int /*<<< orphan*/  IS_STRING ; 
 int /*<<< orphan*/  IS_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  ZEND_CASE 132 
#define  ZEND_FETCH_LIST_R 131 
#define  ZEND_INSTANCEOF 130 
 int ZEND_IS_EQUAL ; 
 int ZEND_QM_ASSIGN ; 
#define  ZEND_SWITCH_LONG 129 
#define  ZEND_SWITCH_STRING 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool FUNC11(
		sccp_ctx *ctx, zend_op *opline, zend_ssa_op *ssa_op, int var, zval *value) {
	if (ssa_op->op1_use == var && FUNC5(ctx->scdf.op_array, opline, ssa_op)) {
		zval zv;
		FUNC1(&zv, value);
		if (FUNC7(ctx->scdf.op_array, opline, &zv)) {
			return 1;
		} else {
			// TODO: check the following special cases ???
			switch (opline->opcode) {
				case ZEND_CASE:
					opline->opcode = ZEND_IS_EQUAL;
					/* break missing intentionally */
				case ZEND_FETCH_LIST_R:
				case ZEND_SWITCH_STRING:
				case ZEND_SWITCH_LONG:
					if (FUNC4(zv) == IS_STRING) {
						FUNC9(FUNC3(zv));
					}
					opline->op1.constant = FUNC6(ctx->scdf.op_array, &zv);
					opline->op1_type = IS_CONST;
					return 1;
				case ZEND_INSTANCEOF:
					FUNC10(&zv);
					FUNC2(&zv);
					opline->opcode = ZEND_QM_ASSIGN;
					opline->op1_type = IS_CONST;
					opline->op1.constant = FUNC6(ctx->scdf.op_array, &zv);
					opline->op2_type = IS_UNUSED;
					if (ssa_op->op2_use >= 0) {
						FUNC0(ssa_op->op2_def == -1);
						FUNC8(ctx->scdf.ssa, ssa_op - ctx->scdf.ssa->ops, ssa_op->op2_use);
						ssa_op->op2_use = -1;
						ssa_op->op2_use_chain = -1;
					}
					return 1;
				default:
					break;
			}
			FUNC10(&zv);
		}
	}
	return 0;
}