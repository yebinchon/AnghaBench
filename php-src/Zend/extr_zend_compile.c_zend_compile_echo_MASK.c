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
typedef  int /*<<< orphan*/  znode ;
struct TYPE_6__ {scalar_t__ extended_value; } ;
typedef  TYPE_1__ zend_op ;
struct TYPE_7__ {struct TYPE_7__** child; } ;
typedef  TYPE_2__ zend_ast ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_ECHO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(zend_ast *ast) /* {{{ */
{
	zend_op *opline;
	zend_ast *expr_ast = ast->child[0];

	znode expr_node;
	FUNC0(&expr_node, expr_ast);

	opline = FUNC1(NULL, ZEND_ECHO, &expr_node, NULL);
	opline->extended_value = 0;
}