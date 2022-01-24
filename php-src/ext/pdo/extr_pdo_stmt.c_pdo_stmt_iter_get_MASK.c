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
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_ulong ;
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/ * funcs; } ;
typedef  TYPE_1__ zend_object_iterator ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct php_pdo_iterator {TYPE_1__ iter; int /*<<< orphan*/  fetch_ahead; scalar_t__ key; } ;
typedef  int /*<<< orphan*/  pdo_stmt_t ;

/* Variables and functions */
 int /*<<< orphan*/  PDO_FETCH_ORI_NEXT ; 
 int /*<<< orphan*/  PDO_FETCH_USE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct php_pdo_iterator* FUNC7 (int,int) ; 
 int /*<<< orphan*/  pdo_stmt_iter_funcs ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

zend_object_iterator *FUNC10(zend_class_entry *ce, zval *object, int by_ref)
{
	pdo_stmt_t *stmt = FUNC5(object);
	struct php_pdo_iterator *I;

	if (by_ref) {
		FUNC9(NULL, "An iterator cannot be used with foreach by reference");
		return NULL;
	}

	I = FUNC7(1, sizeof(struct php_pdo_iterator));
	FUNC8(&I->iter);
	I->iter.funcs = &pdo_stmt_iter_funcs;
	FUNC3(object);
	FUNC1(&I->iter.data, FUNC4(object));

	if (!FUNC6(stmt, 1, &I->fetch_ahead, PDO_FETCH_USE_DEFAULT,
			PDO_FETCH_ORI_NEXT, 0, 0)) {
		FUNC0();
		I->key = (zend_ulong)-1;
		FUNC2(&I->fetch_ahead);
	}

	return &I->iter;
}