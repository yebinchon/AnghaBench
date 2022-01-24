#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
typedef  int zend_bool ;
struct TYPE_7__ {scalar_t__ children; TYPE_2__** child; } ;
typedef  TYPE_1__ zend_ast_list ;
struct TYPE_8__ {scalar_t__ attr; struct TYPE_8__** child; } ;
typedef  TYPE_2__ zend_ast ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ T_CLASS ; 
 scalar_t__ ZEND_SYMBOL_CLASS ; 
 scalar_t__ ZEND_SYMBOL_CONST ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_namespace ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const**,size_t*) ; 
 char* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC22 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *) ; 

void FUNC25(zend_ast *ast) /* {{{ */
{
	zend_ast_list *list = FUNC4(ast);
	uint32_t i;
	zend_string *current_ns = FUNC0(current_namespace);
	uint32_t type = ast->attr;
	HashTable *current_import = FUNC9(type);
	zend_bool case_sensitive = type == ZEND_SYMBOL_CONST;

	for (i = 0; i < list->children; ++i) {
		zend_ast *use_ast = list->child[i];
		zend_ast *old_name_ast = use_ast->child[0];
		zend_ast *new_name_ast = use_ast->child[1];
		zend_string *old_name = FUNC5(old_name_ast);
		zend_string *new_name, *lookup_name;

		if (new_name_ast) {
			new_name = FUNC19(FUNC5(new_name_ast));
		} else {
			const char *unqualified_name;
			size_t unqualified_name_len;
			if (FUNC10(old_name, &unqualified_name, &unqualified_name_len)) {
				/* The form "use A\B" is equivalent to "use A\B as B" */
				new_name = FUNC22(unqualified_name, unqualified_name_len, 0);
			} else {
				new_name = FUNC19(old_name);

				if (!current_ns) {
					if (type == T_CLASS && FUNC21(new_name, "strict")) {
						FUNC8(E_COMPILE_ERROR,
							"You seem to be trying to use a different language...");
					}

					FUNC7(E_WARNING, "The use statement with non-compound name '%s' "
						"has no effect", FUNC2(new_name));
				}
			}
		}

		if (case_sensitive) {
			lookup_name = FUNC19(new_name);
		} else {
			lookup_name = FUNC24(new_name);
		}

		if (type == ZEND_SYMBOL_CLASS && FUNC14(new_name)) {
			FUNC8(E_COMPILE_ERROR, "Cannot use %s as %s because '%s' "
				"is a special class name", FUNC2(old_name), FUNC2(new_name), FUNC2(new_name));
		}

		if (current_ns) {
			zend_string *ns_name = FUNC18(FUNC1(current_ns) + 1 + FUNC1(new_name), 0);
			FUNC16(FUNC2(ns_name), FUNC2(current_ns), FUNC1(current_ns));
			FUNC2(ns_name)[FUNC1(current_ns)] = '\\';
			FUNC3(FUNC2(ns_name) + FUNC1(current_ns) + 1, FUNC2(lookup_name), FUNC1(lookup_name) + 1);

			if (FUNC13(ns_name, type)) {
				FUNC6(type, old_name, new_name, ns_name);
			}

			FUNC20(ns_name);
		} else if (FUNC13(lookup_name, type)) {
			FUNC6(type, old_name, new_name, lookup_name);
		}

		FUNC17(old_name);
		old_name = FUNC15(old_name);
		if (!FUNC12(current_import, lookup_name, old_name)) {
			FUNC8(E_COMPILE_ERROR, "Cannot use%s %s as %s because the name "
				"is already in use", FUNC11(type), FUNC2(old_name), FUNC2(new_name));
		}

		FUNC23(lookup_name, 0);
		FUNC23(new_name, 0);
	}
}