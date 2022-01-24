#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_14__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ zend_reference ;
typedef  int /*<<< orphan*/  zend_persistent_script ;
typedef  int /*<<< orphan*/  zend_file_cache_metainfo ;
typedef  TYPE_1__ zend_ast_ref ;
typedef  TYPE_1__ HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
#define  IS_ARRAY 131 
#define  IS_CONSTANT_AST 130 
#define  IS_REFERENCE 129 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
#define  IS_STRING 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*)) ; 

__attribute__((used)) static void FUNC12(zval                     *zv,
                                           zend_persistent_script   *script,
                                           zend_file_cache_metainfo *info,
                                           void                     *buf)
{
	switch (FUNC9(zv)) {
		case IS_STRING:
			if (!FUNC1(FUNC8(zv))) {
				FUNC3(FUNC8(zv));
			}
			break;
		case IS_ARRAY:
			if (!FUNC1(FUNC5(zv))) {
				HashTable *ht;

				FUNC2(FUNC5(zv));
				ht = FUNC5(zv);
				FUNC4(ht);
				FUNC11(ht, script, info, buf, zend_file_cache_serialize_zval);
			}
			break;
		case IS_REFERENCE:
			if (!FUNC1(FUNC7(zv))) {
				zend_reference *ref;

				FUNC2(FUNC7(zv));
				ref = FUNC7(zv);
				FUNC4(ref);
				FUNC12(&ref->val, script, info, buf);
			}
			break;
		case IS_CONSTANT_AST:
			if (!FUNC1(FUNC6(zv))) {
				zend_ast_ref *ast;

				FUNC2(FUNC6(zv));
				ast = FUNC6(zv);
				FUNC4(ast);
				FUNC10(FUNC0(ast), script, info, buf);
			}
			break;
	}
}