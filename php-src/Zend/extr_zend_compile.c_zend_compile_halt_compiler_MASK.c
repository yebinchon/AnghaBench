#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_long ;
struct TYPE_4__ {struct TYPE_4__** child; } ;
typedef  TYPE_1__ zend_ast ;
typedef  int /*<<< orphan*/  const_name ;

/* Variables and functions */
 int /*<<< orphan*/  CONST_CS ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  has_bracketed_namespaces ; 
 int /*<<< orphan*/  in_namespace ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC10(zend_ast *ast) /* {{{ */
{
	zend_ast *offset_ast = ast->child[0];
	zend_long offset = FUNC3(FUNC4(offset_ast));

	zend_string *filename, *name;
	const char const_name[] = "__COMPILER_HALT_OFFSET__";

	if (FUNC0(has_bracketed_namespaces) && FUNC0(in_namespace)) {
		FUNC5(E_COMPILE_ERROR,
			"__HALT_COMPILER() can only be used from the outermost scope");
	}

	filename = FUNC6();
	name = FUNC7(const_name, sizeof(const_name) - 1,
		FUNC2(filename), FUNC1(filename), 0);

	FUNC8(FUNC2(name), FUNC1(name), offset, CONST_CS, 0);
	FUNC9(name, 0);
}