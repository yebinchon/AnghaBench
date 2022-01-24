#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  attr; struct TYPE_5__** child; } ;
typedef  TYPE_1__ zend_ast ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC1(zend_ast *list) /* {{{ */
{
	zend_ast *type_ast = list->child[0];
	zend_ast *prop_ast = list->child[1];

	FUNC0(prop_ast, type_ast, list->attr);
}