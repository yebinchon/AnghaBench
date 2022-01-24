#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode ;
struct TYPE_8__ {scalar_t__ num; } ;
struct TYPE_9__ {int /*<<< orphan*/  extended_value; TYPE_1__ op1; } ;
typedef  TYPE_2__ zend_op ;
struct TYPE_10__ {struct TYPE_10__** child; } ;
typedef  TYPE_3__ zend_ast ;
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  current_brk_cont; } ;

/* Variables and functions */
 TYPE_7__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_GOTO ; 
 int /*<<< orphan*/  context ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zend_ast *ast) /* {{{ */
{
	zend_ast *label_ast = ast->child[0];
	znode label_node;
	zend_op *opline;
	uint32_t opnum_start = FUNC1();

	FUNC2(&label_node, label_ast);

	/* Label resolution and unwinding adjustments happen in pass two. */
	FUNC4(NULL);
	opline = FUNC3(NULL, ZEND_GOTO, NULL, &label_node);
	opline->op1.num = FUNC1() - opnum_start - 1;
	opline->extended_value = FUNC0(context).current_brk_cont;
}