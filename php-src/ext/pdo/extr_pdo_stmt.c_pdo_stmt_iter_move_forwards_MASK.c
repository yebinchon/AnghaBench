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
typedef  scalar_t__ zend_ulong ;
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct php_pdo_iterator {scalar_t__ key; int /*<<< orphan*/  fetch_ahead; TYPE_1__ iter; } ;
typedef  int /*<<< orphan*/  pdo_stmt_t ;

/* Variables and functions */
 int /*<<< orphan*/  PDO_FETCH_ORI_NEXT ; 
 int /*<<< orphan*/  PDO_FETCH_USE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(zend_object_iterator *iter)
{
	struct php_pdo_iterator *I = (struct php_pdo_iterator*)iter;
	pdo_stmt_t *stmt = FUNC3(&I->iter.data); /* for PDO_HANDLE_STMT_ERR() */

	if (!FUNC2(I->fetch_ahead)) {
		FUNC5(&I->fetch_ahead);
	}

	if (!FUNC4(stmt, TRUE, &I->fetch_ahead, PDO_FETCH_USE_DEFAULT,
			PDO_FETCH_ORI_NEXT, 0, 0)) {

		FUNC0();
		I->key = (zend_ulong)-1;
		FUNC1(&I->fetch_ahead);

		return;
	}

	I->key++;
}