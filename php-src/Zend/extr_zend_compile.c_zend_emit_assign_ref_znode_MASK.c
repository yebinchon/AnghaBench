#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  znode ;
typedef  int /*<<< orphan*/  zend_ast ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_AST_ASSIGN_REF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(zend_ast *var_ast, znode *value_node) /* {{{ */
{
	zend_ast *assign_ast = FUNC0(ZEND_AST_ASSIGN_REF, var_ast,
		FUNC1(value_node));
	FUNC2(NULL, assign_ast);
}