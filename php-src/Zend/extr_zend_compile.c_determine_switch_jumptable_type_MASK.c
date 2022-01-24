#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_uchar ;
struct TYPE_6__ {size_t children; TYPE_2__** child; } ;
typedef  TYPE_1__ zend_ast_list ;
struct TYPE_7__ {scalar_t__ kind; struct TYPE_7__** child; } ;
typedef  TYPE_2__ zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 scalar_t__ IS_LONG ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ IS_UNDEF ; 
 scalar_t__ ZEND_AST_ZVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 

__attribute__((used)) static zend_uchar FUNC6(zend_ast_list *cases) {
	uint32_t i;
	zend_uchar common_type = IS_UNDEF;
	for (i = 0; i < cases->children; i++) {
		zend_ast *case_ast = cases->child[i];
		zend_ast **cond_ast = &case_ast->child[0];
		zval *cond_zv;
		if (!case_ast->child[0]) {
			/* Skip default clause */
			continue;
		}

		FUNC5(cond_ast);
		if ((*cond_ast)->kind != ZEND_AST_ZVAL) {
			/* Non-constant case */
			return IS_UNDEF;
		}

		cond_zv = FUNC4(case_ast->child[0]);
		if (FUNC2(cond_zv) != IS_LONG && FUNC2(cond_zv) != IS_STRING) {
			/* We only optimize switched on integers and strings */
			return IS_UNDEF;
		}

		if (common_type == IS_UNDEF) {
			common_type = FUNC2(cond_zv);
		} else if (common_type != FUNC2(cond_zv)) {
			/* Non-uniform case types */
			return IS_UNDEF;
		}

		if (FUNC2(cond_zv) == IS_STRING
				&& FUNC3(FUNC1(cond_zv), FUNC0(cond_zv), NULL, NULL, 0)) {
			/* Numeric strings cannot be compared with a simple hash lookup */
			return IS_UNDEF;
		}
	}

	return common_type;
}