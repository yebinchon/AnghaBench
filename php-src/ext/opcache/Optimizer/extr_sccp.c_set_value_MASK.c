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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_10__ {TYPE_2__* ssa; int /*<<< orphan*/  op_array; } ;
typedef  TYPE_3__ scdf_ctx ;
struct TYPE_11__ {int /*<<< orphan*/ * values; } ;
typedef  TYPE_4__ sccp_ctx ;
struct TYPE_9__ {TYPE_1__* vars; } ;
struct TYPE_8__ {int /*<<< orphan*/  var; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IS_CV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(scdf_ctx *scdf, sccp_ctx *ctx, int var, zval *new) {
	zval *value = &ctx->values[var];
	if (FUNC0(value) || FUNC3(new)) {
		return;
	}

#if SCP_DEBUG
	fprintf(stderr, "Lowering #%d.", var);
	zend_dump_var(scdf->op_array, IS_CV, scdf->ssa->vars[var].var);
	fprintf(stderr, " from");
	scp_dump_value(value);
	fprintf(stderr, " to");
	scp_dump_value(new);
	fprintf(stderr, "\n");
#endif

	if (FUNC3(value) || FUNC0(new)) {
		FUNC14(value);
		FUNC5(value, new);
		FUNC9(scdf, var);
		return;
	}

	/* Always replace PARTIAL_(ARRAY|OBJECT), as new maybe changed by join_partial_(arrays|object) */
	if (FUNC1(new) || FUNC2(new)) {
		if (FUNC7(value) != FUNC7(new)
			|| FUNC12(FUNC6(new)) != FUNC12(FUNC6(value))) {
			FUNC14(value);
			FUNC5(value, new);
			FUNC9(scdf, var);
		}
		return;
	}

#if ZEND_DEBUG
	ZEND_ASSERT(zend_is_identical(value, new));
#endif
}