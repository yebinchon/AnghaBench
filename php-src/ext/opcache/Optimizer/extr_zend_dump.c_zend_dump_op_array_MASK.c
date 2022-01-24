#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_21__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_11__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct TYPE_33__ {int vars_count; scalar_t__ var_info; } ;
typedef  TYPE_7__ zend_ssa ;
struct TYPE_34__ {int last; int num_args; int last_var; int T; int line_start; int line_end; int last_live_range; int last_try_catch; TYPE_6__* try_catch_array; TYPE_5__* live_range; int /*<<< orphan*/ * opcodes; TYPE_1__* filename; } ;
typedef  TYPE_8__ zend_op_array ;
typedef  int /*<<< orphan*/  zend_op ;
struct TYPE_30__ {int /*<<< orphan*/  range; int /*<<< orphan*/  is_instanceof; int /*<<< orphan*/  ce; int /*<<< orphan*/  type; } ;
struct TYPE_35__ {int flags; scalar_t__ num_args; int return_value_used; TYPE_4__ return_info; TYPE_3__* arg_info; } ;
typedef  TYPE_9__ zend_func_info ;
struct TYPE_24__ {int blocks_count; int* map; TYPE_11__* blocks; } ;
typedef  TYPE_10__ zend_cfg ;
struct TYPE_25__ {int flags; int start; int len; } ;
typedef  TYPE_11__ zend_basic_block ;
typedef  int uint32_t ;
struct TYPE_32__ {size_t try_op; int catch_op; int finally_op; int finally_end; } ;
struct TYPE_31__ {int var; int start; int end; } ;
struct TYPE_28__ {int /*<<< orphan*/  range; int /*<<< orphan*/  is_instanceof; int /*<<< orphan*/  ce; int /*<<< orphan*/  type; } ;
struct TYPE_29__ {TYPE_2__ info; } ;
struct TYPE_27__ {int flags; } ;
struct TYPE_26__ {char* val; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IS_CV ; 
 int FUNC1 (int,scalar_t__) ; 
 int ZEND_BB_REACHABLE ; 
 int ZEND_DUMP_CFG ; 
 int ZEND_DUMP_HIDE_UNREACHABLE ; 
 int ZEND_DUMP_LIVE_RANGES ; 
 int ZEND_DUMP_SSA ; 
 int ZEND_FUNC_HAS_EXTENDED_FCALL ; 
 int ZEND_FUNC_HAS_EXTENDED_STMT ; 
 int ZEND_FUNC_INDIRECT_VAR_ACCESS ; 
 TYPE_9__* FUNC2 (TYPE_8__ const*) ; 
 int ZEND_FUNC_IRREDUCIBLE ; 
 int ZEND_FUNC_NO_LOOPS ; 
 int ZEND_FUNC_RECURSIVE ; 
 int ZEND_FUNC_RECURSIVE_DIRECTLY ; 
 int ZEND_FUNC_RECURSIVE_INDIRECTLY ; 
 int ZEND_JIT_FUNC_INLINE ; 
 int ZEND_JIT_FUNC_NO_FRAME ; 
 int ZEND_JIT_FUNC_NO_IN_MEM_CVS ; 
 int ZEND_JIT_FUNC_NO_SYMTAB ; 
 int ZEND_JIT_FUNC_NO_USED_ARGS ; 
#define  ZEND_LIVE_LOOP 132 
 int ZEND_LIVE_MASK ; 
#define  ZEND_LIVE_NEW 131 
#define  ZEND_LIVE_ROPE 130 
#define  ZEND_LIVE_SILENCE 129 
#define  ZEND_LIVE_TMPVAR 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_21__* info ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__ const*,TYPE_8__ const*,TYPE_7__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__ const*,TYPE_11__*,int /*<<< orphan*/  const*,int,void const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__ const*,TYPE_7__ const*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC10(const zend_op_array *op_array, uint32_t dump_flags, const char *msg, const void *data)
{
	int i;
	const zend_cfg *cfg = NULL;
	const zend_ssa *ssa = NULL;
	zend_func_info *func_info = NULL;
	uint32_t func_flags = 0;

	if (dump_flags & (ZEND_DUMP_CFG|ZEND_DUMP_SSA)) {
		cfg = (const zend_cfg*)data;
		if (!cfg->blocks) {
			cfg = data = NULL;
		}
	}
	if (dump_flags & ZEND_DUMP_SSA) {
		ssa = (const zend_ssa*)data;
	}

	func_info = FUNC2(op_array);
	if (func_info) {
		func_flags = func_info->flags;
	}

	FUNC3(stderr, "\n");
	FUNC6(op_array);
	FUNC3(stderr, ": ; (lines=%d, args=%d",
		op_array->last,
		op_array->num_args);
	if (func_info && func_info->num_args >= 0) {
		FUNC3(stderr, "/%ld", func_info->num_args);
	}
	FUNC3(stderr, ", vars=%d, tmps=%d", op_array->last_var, op_array->T);
	if (ssa) {
		FUNC3(stderr, ", ssa_vars=%d", ssa->vars_count);
	}
	if (func_flags & ZEND_FUNC_INDIRECT_VAR_ACCESS) {
		FUNC3(stderr, ", dynamic");
	}
	if (func_flags & ZEND_FUNC_RECURSIVE) {
		FUNC3(stderr, ", recursive");
		if (func_flags & ZEND_FUNC_RECURSIVE_DIRECTLY) {
			FUNC3(stderr, " directly");
		}
		if (func_flags & ZEND_FUNC_RECURSIVE_INDIRECTLY) {
			FUNC3(stderr, " indirectly");
		}
	}
	if (func_flags & ZEND_FUNC_IRREDUCIBLE) {
		FUNC3(stderr, ", irreducable");
	}
	if (func_flags & ZEND_FUNC_NO_LOOPS) {
		FUNC3(stderr, ", no_loops");
	}
	if (func_flags & ZEND_FUNC_HAS_EXTENDED_STMT) {
		FUNC3(stderr, ", extended_stmt");
	}
	if (func_flags & ZEND_FUNC_HAS_EXTENDED_FCALL) {
		FUNC3(stderr, ", extended_fcall");
	}
//TODO: this is useful only for JIT???
#if 0
	if (info->flags & ZEND_JIT_FUNC_NO_IN_MEM_CVS) {
		fprintf(stderr, ", no_in_mem_cvs");
	}
	if (info->flags & ZEND_JIT_FUNC_NO_USED_ARGS) {
		fprintf(stderr, ", no_used_args");
	}
	if (info->flags & ZEND_JIT_FUNC_NO_SYMTAB) {
		fprintf(stderr, ", no_symtab");
	}
	if (info->flags & ZEND_JIT_FUNC_NO_FRAME) {
		fprintf(stderr, ", no_frame");
	}
	if (info->flags & ZEND_JIT_FUNC_INLINE) {
		fprintf(stderr, ", inline");
	}
#endif
	if (func_info && func_info->return_value_used == 0) {
		FUNC3(stderr, ", no_return_value");
	} else if (func_info && func_info->return_value_used == 1) {
		FUNC3(stderr, ", return_value");
	}
	FUNC3(stderr, ")\n");
	if (msg) {
		FUNC3(stderr, "    ; (%s)\n", msg);
	}
	FUNC3(stderr, "    ; %s:%u-%u\n", op_array->filename->val, op_array->line_start, op_array->line_end);

	if (func_info && func_info->num_args > 0) {
		uint32_t j;

		for (j = 0; j < FUNC1(op_array->num_args, func_info->num_args ); j++) {
			FUNC3(stderr, "    ; arg %d ", j);
			FUNC9(func_info->arg_info[j].info.type, func_info->arg_info[j].info.ce, func_info->arg_info[j].info.is_instanceof, dump_flags);
			FUNC7(&func_info->arg_info[j].info.range);
			FUNC3(stderr, "\n");
		}
	}

	if (func_info) {
		FUNC3(stderr, "    ; return ");
		FUNC9(func_info->return_info.type, func_info->return_info.ce, func_info->return_info.is_instanceof, dump_flags);
		FUNC7(&func_info->return_info.range);
		FUNC3(stderr, "\n");
	}

	if (ssa && ssa->var_info) {
		for (i = 0; i < op_array->last_var; i++) {
			FUNC3(stderr, "    ; ");
			FUNC8(op_array, ssa, i, IS_CV, i, dump_flags);
			FUNC3(stderr, "\n");
		}
	}

	if (cfg) {
		int n;
		zend_basic_block *b;

		for (n = 0; n < cfg->blocks_count; n++) {
			b = cfg->blocks + n;
			if (!(dump_flags & ZEND_DUMP_HIDE_UNREACHABLE) || (b->flags & ZEND_BB_REACHABLE)) {
				const zend_op *opline;
				const zend_op *end;

				FUNC4(cfg, op_array, ssa, n, dump_flags);
				opline = op_array->opcodes + b->start;
				end = opline + b->len;
				while (opline < end) {
					FUNC5(op_array, b, opline, dump_flags, data);
					opline++;
				}
			}
		}
		if (op_array->last_live_range && (dump_flags & ZEND_DUMP_LIVE_RANGES)) {
			FUNC3(stderr, "LIVE RANGES:\n");
			for (i = 0; i < op_array->last_live_range; i++) {
				FUNC3(stderr, "        %u: L%u - L%u ",
					FUNC0(op_array->live_range[i].var & ~ZEND_LIVE_MASK),
					op_array->live_range[i].start,
					op_array->live_range[i].end);
				switch (op_array->live_range[i].var & ZEND_LIVE_MASK) {
					case ZEND_LIVE_TMPVAR:
						FUNC3(stderr, "(tmp/var)\n");
						break;
					case ZEND_LIVE_LOOP:
						FUNC3(stderr, "(loop)\n");
						break;
					case ZEND_LIVE_SILENCE:
						FUNC3(stderr, "(silence)\n");
						break;
					case ZEND_LIVE_ROPE:
						FUNC3(stderr, "(rope)\n");
						break;
					case ZEND_LIVE_NEW:
						FUNC3(stderr, "(new)\n");
						break;
				}
			}
		}
		if (op_array->last_try_catch) {
			FUNC3(stderr, "EXCEPTION TABLE:\n");
			for (i = 0; i < op_array->last_try_catch; i++) {
				FUNC3(stderr, "        BB%u",
					cfg->map[op_array->try_catch_array[i].try_op]);
				if (op_array->try_catch_array[i].catch_op) {
					FUNC3(stderr, ", BB%u",
						cfg->map[op_array->try_catch_array[i].catch_op]);
				} else {
					FUNC3(stderr, ", -");
				}
				if (op_array->try_catch_array[i].finally_op) {
					FUNC3(stderr, ", BB%u",
						cfg->map[op_array->try_catch_array[i].finally_op]);
				} else {
					FUNC3(stderr, ", -");
				}
				if (op_array->try_catch_array[i].finally_end) {
					FUNC3(stderr, ", BB%u\n",
						cfg->map[op_array->try_catch_array[i].finally_end]);
				} else {
					FUNC3(stderr, ", -\n");
				}
			}
		}
	} else {
		const zend_op *opline = op_array->opcodes;
		const zend_op *end = opline + op_array->last;

		while (opline < end) {
			FUNC5(op_array, NULL, opline, dump_flags, data);
			opline++;
		}
		if (op_array->last_live_range && (dump_flags & ZEND_DUMP_LIVE_RANGES)) {
			FUNC3(stderr, "LIVE RANGES:\n");
			for (i = 0; i < op_array->last_live_range; i++) {
				FUNC3(stderr, "        %u: L%u - L%u ",
					FUNC0(op_array->live_range[i].var & ~ZEND_LIVE_MASK),
					op_array->live_range[i].start,
					op_array->live_range[i].end);
				switch (op_array->live_range[i].var & ZEND_LIVE_MASK) {
					case ZEND_LIVE_TMPVAR:
						FUNC3(stderr, "(tmp/var)\n");
						break;
					case ZEND_LIVE_LOOP:
						FUNC3(stderr, "(loop)\n");
						break;
					case ZEND_LIVE_SILENCE:
						FUNC3(stderr, "(silence)\n");
						break;
					case ZEND_LIVE_ROPE:
						FUNC3(stderr, "(rope)\n");
						break;
					case ZEND_LIVE_NEW:
						FUNC3(stderr, "(new)\n");
						break;
				}
			}
		}
		if (op_array->last_try_catch) {
			FUNC3(stderr, "EXCEPTION TABLE:\n");
			for (i = 0; i < op_array->last_try_catch; i++) {
				FUNC3(stderr, "        L%zu",
					op_array->try_catch_array[i].try_op);
				if (op_array->try_catch_array[i].catch_op) {
					FUNC3(stderr, ", L%u",
						op_array->try_catch_array[i].catch_op);
				} else {
					FUNC3(stderr, ", -");
				}
				if (op_array->try_catch_array[i].finally_op) {
					FUNC3(stderr, ", L%u",
						op_array->try_catch_array[i].finally_op);
				} else {
					FUNC3(stderr, ", -");
				}
				if (op_array->try_catch_array[i].finally_end) {
					FUNC3(stderr, ", L%u\n",
						op_array->try_catch_array[i].finally_end);
				} else {
					FUNC3(stderr, ", -\n");
				}
			}
		}
	}
}