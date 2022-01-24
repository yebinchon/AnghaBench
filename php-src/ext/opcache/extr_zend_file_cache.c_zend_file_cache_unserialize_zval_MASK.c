#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ zend_reference ;
typedef  int /*<<< orphan*/  zend_persistent_script ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
#define  IS_ARRAY 131 
#define  IS_CONSTANT_AST 130 
#define  IS_REFERENCE 129 
#define  IS_STRING 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  ZVAL_PTR_DTOR ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*),int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(zval                    *zv,
                                             zend_persistent_script  *script,
                                             void                    *buf)
{
	switch (FUNC8(zv)) {
		case IS_STRING:
			if (!FUNC0(FUNC7(zv))) {
				FUNC2(FUNC7(zv));
			}
			break;
		case IS_ARRAY:
			if (!FUNC0(FUNC3(zv))) {
				HashTable *ht;

				FUNC1(FUNC3(zv));
				ht = FUNC3(zv);
				FUNC10(ht,
						script, buf, zend_file_cache_unserialize_zval, ZVAL_PTR_DTOR);
			}
			break;
		case IS_REFERENCE:
			if (!FUNC0(FUNC6(zv))) {
				zend_reference *ref;

				FUNC1(FUNC6(zv));
				ref = FUNC6(zv);
				FUNC11(&ref->val, script, buf);
			}
			break;
		case IS_CONSTANT_AST:
			if (!FUNC0(FUNC5(zv))) {
				FUNC1(FUNC5(zv));
				FUNC9(FUNC4(zv), script, buf);
			}
			break;
	}
}