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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_function ;
struct TYPE_2__ {int /*<<< orphan*/  function_table; } ;

/* Variables and functions */
 TYPE_1__* pdo_row_ce ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_function *FUNC3(
	zend_object **object_pp,
	zend_string *method_name, const zval *key)
{
	zend_function *fbc;
	zend_string *lc_method_name;

	lc_method_name = FUNC2(method_name);

	if ((fbc = FUNC0(&pdo_row_ce->function_table, lc_method_name)) == NULL) {
		FUNC1(lc_method_name, 0);
		return NULL;
	}

	FUNC1(lc_method_name, 0);

	return fbc;
}