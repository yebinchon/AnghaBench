#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int zend_uchar ;
typedef  int /*<<< orphan*/  zend_type ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_6__ {int attr; scalar_t__ kind; } ;
typedef  TYPE_1__ zend_ast ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int /*<<< orphan*/  E_COMPILE_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ZEND_AST_TYPE ; 
 scalar_t__ ZEND_FETCH_CLASS_DEFAULT ; 
 int ZEND_NAME_NOT_FQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ZEND_TYPE_NULLABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_namespace ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_type FUNC17(zend_ast *ast)
{
	FUNC1(!(ast->attr & ZEND_TYPE_NULLABLE));
	if (ast->kind == ZEND_AST_TYPE) {
		return (zend_type) FUNC3(ast->attr, 0, 0);
	} else {
		zend_string *class_name = FUNC6(ast);
		zend_uchar type = FUNC13(class_name);

		if (type != 0) {
			if ((ast->attr & ZEND_NAME_NOT_FQ) != ZEND_NAME_NOT_FQ) {
				FUNC9(E_COMPILE_ERROR,
					"Type declaration '%s' must be unqualified",
					FUNC4(FUNC16(class_name)));
			}
			return (zend_type) FUNC3(type, 0, 0);
		} else {
			const char *correct_name;
			zend_string *orig_name = FUNC6(ast);
			uint32_t fetch_type = FUNC10(ast);
			if (fetch_type == ZEND_FETCH_CLASS_DEFAULT) {
				class_name = FUNC14(ast);
				FUNC5(class_name);
			} else {
				FUNC7(fetch_type);
				FUNC15(class_name);
			}

			if (ast->attr == ZEND_NAME_NOT_FQ
					&& FUNC11(orig_name, &correct_name)
					&& FUNC12(orig_name)) {
				const char *extra =
					FUNC0(current_namespace) ? " or import the class with \"use\"" : "";
				if (correct_name) {
					FUNC8(E_COMPILE_WARNING,
						"\"%s\" will be interpreted as a class name. Did you mean \"%s\"? "
						"Write \"\\%s\"%s to suppress this warning",
						FUNC4(orig_name), correct_name, FUNC4(class_name), extra);
				} else {
					FUNC8(E_COMPILE_WARNING,
						"\"%s\" is not a supported builtin type "
						"and will be interpreted as a class name. "
						"Write \"\\%s\"%s to suppress this warning",
						FUNC4(orig_name), FUNC4(class_name), extra);
				}
			}

			return (zend_type) FUNC2(class_name, 0, 0);
		}
	}
}