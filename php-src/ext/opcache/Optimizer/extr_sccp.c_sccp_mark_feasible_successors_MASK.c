#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_ssa_op ;
struct TYPE_14__ {int* map; } ;
struct TYPE_15__ {TYPE_2__ cfg; } ;
typedef  TYPE_3__ zend_ssa ;
typedef  int /*<<< orphan*/  zend_op_array ;
struct TYPE_13__ {int /*<<< orphan*/  constant; } ;
struct TYPE_16__ {int opcode; int /*<<< orphan*/  extended_value; TYPE_1__ op2; } ;
typedef  TYPE_4__ zend_op ;
struct TYPE_17__ {int* successors; int successors_count; } ;
typedef  TYPE_5__ zend_basic_block ;
struct TYPE_18__ {TYPE_3__* ssa; int /*<<< orphan*/ * op_array; } ;
typedef  TYPE_6__ scdf_ctx ;
typedef  int /*<<< orphan*/  sccp_ctx ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  IS_ARRAY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IS_FALSE ; 
 int /*<<< orphan*/  IS_LONG ; 
 int /*<<< orphan*/  IS_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IS_STRING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IS_TRUE ; 
#define  ZEND_ASSERT_CHECK 142 
#define  ZEND_CATCH 141 
#define  ZEND_COALESCE 140 
#define  ZEND_FE_FETCH_R 139 
#define  ZEND_FE_FETCH_RW 138 
#define  ZEND_FE_RESET_R 137 
#define  ZEND_FE_RESET_RW 136 
#define  ZEND_JMPNZ 135 
#define  ZEND_JMPNZ_EX 134 
#define  ZEND_JMPZ 133 
#define  ZEND_JMPZNZ 132 
#define  ZEND_JMPZ_EX 131 
#define  ZEND_JMP_SET 130 
 size_t FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
#define  ZEND_SWITCH_LONG 129 
#define  ZEND_SWITCH_STRING 128 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(
		scdf_ctx *scdf,
		int block_num, zend_basic_block *block,
		zend_op *opline, zend_ssa_op *ssa_op) {
	sccp_ctx *ctx = (sccp_ctx *) scdf;
	zval *op1, zv;
	int s;

	/* We can't determine the branch target at compile-time for these */
	switch (opline->opcode) {
		case ZEND_ASSERT_CHECK:
		case ZEND_CATCH:
		case ZEND_FE_FETCH_R:
		case ZEND_FE_FETCH_RW:
			FUNC13(scdf, block_num, block->successors[0]);
			FUNC13(scdf, block_num, block->successors[1]);
			return;
	}

	op1 = FUNC12(ctx, opline, ssa_op);

	/* Branch target can be either one */
	if (!op1 || FUNC1(op1)) {
		for (s = 0; s < block->successors_count; s++) {
			FUNC13(scdf, block_num, block->successors[s]);
		}
		return;
	}

	/* Branch target not yet known */
	if (FUNC3(op1)) {
		return;
	}

	switch (opline->opcode) {
		case ZEND_JMPZ:
		case ZEND_JMPZNZ:
		case ZEND_JMPZ_EX:
		{
			if (FUNC11(&zv, op1) == FAILURE) {
				FUNC13(scdf, block_num, block->successors[0]);
				FUNC13(scdf, block_num, block->successors[1]);
				return;
			}
			s = FUNC9(zv) == IS_TRUE;
			break;
		}
		case ZEND_JMPNZ:
		case ZEND_JMPNZ_EX:
		case ZEND_JMP_SET:
		{
			if (FUNC11(&zv, op1) == FAILURE) {
				FUNC13(scdf, block_num, block->successors[0]);
				FUNC13(scdf, block_num, block->successors[1]);
				return;
			}
			s = FUNC9(zv) == IS_FALSE;
			break;
		}
		case ZEND_COALESCE:
			s = (FUNC10(op1) == IS_NULL);
			break;
		case ZEND_FE_RESET_R:
		case ZEND_FE_RESET_RW:
			/* A non-empty partial array is definitely non-empty, but an
			 * empty partial array may be non-empty at runtime. */
			if (FUNC10(op1) != IS_ARRAY ||
					(FUNC2(op1) && FUNC16(FUNC6(op1)) == 0)) {
				FUNC13(scdf, block_num, block->successors[0]);
				FUNC13(scdf, block_num, block->successors[1]);
				return;
			}
			s = FUNC16(FUNC6(op1)) != 0;
			break;
		case ZEND_SWITCH_LONG:
			if (FUNC10(op1) == IS_LONG) {
				zend_op_array *op_array = scdf->op_array;
				zend_ssa *ssa = scdf->ssa;
				HashTable *jmptable = FUNC5(FUNC0(op_array, opline->op2.constant));
				zval *jmp_zv = FUNC15(jmptable, FUNC7(op1));
				int target;

				if (jmp_zv) {
					target = ssa->cfg.map[FUNC4(op_array, opline, FUNC7(jmp_zv))];
				} else {
					target = ssa->cfg.map[FUNC4(op_array, opline, opline->extended_value)];
				}
				FUNC13(scdf, block_num, target);
				return;
			}
			s = 0;
			break;
		case ZEND_SWITCH_STRING:
			if (FUNC10(op1) == IS_STRING) {
				zend_op_array *op_array = scdf->op_array;
				zend_ssa *ssa = scdf->ssa;
				HashTable *jmptable = FUNC5(FUNC0(op_array, opline->op2.constant));
				zval *jmp_zv = FUNC14(jmptable, FUNC8(op1));
				int target;

				if (jmp_zv) {
					target = ssa->cfg.map[FUNC4(op_array, opline, FUNC7(jmp_zv))];
				} else {
					target = ssa->cfg.map[FUNC4(op_array, opline, opline->extended_value)];
				}
				FUNC13(scdf, block_num, target);
				return;
			}
			s = 0;
			break;
		default:
			for (s = 0; s < block->successors_count; s++) {
				FUNC13(scdf, block_num, block->successors[s]);
			}
			return;
	}
	FUNC13(scdf, block_num, block->successors[s]);
}