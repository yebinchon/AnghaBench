#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_6__ {int /*<<< orphan*/  opline_num; int /*<<< orphan*/  brk_cont; } ;
typedef  TYPE_1__ zend_label ;
struct TYPE_7__ {int /*<<< orphan*/ * child; } ;
typedef  TYPE_2__ zend_ast ;
struct TYPE_8__ {int /*<<< orphan*/  labels; int /*<<< orphan*/  current_brk_cont; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  label_ptr_dtor ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(zend_ast *ast) /* {{{ */
{
	zend_string *label = FUNC4(ast->child[0]);
	zend_label dest;

	if (!FUNC1(context).labels) {
		FUNC0(FUNC1(context).labels);
		FUNC7(FUNC1(context).labels, 8, NULL, label_ptr_dtor, 0);
	}

	dest.brk_cont = FUNC1(context).current_brk_cont;
	dest.opline_num = FUNC3();

	if (!FUNC6(FUNC1(context).labels, label, &dest, sizeof(zend_label))) {
		FUNC5(E_COMPILE_ERROR, "Label '%s' already defined", FUNC2(label));
	}
}