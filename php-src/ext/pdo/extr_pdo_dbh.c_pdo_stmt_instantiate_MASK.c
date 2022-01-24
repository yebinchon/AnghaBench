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
struct TYPE_4__ {int /*<<< orphan*/  constructor; } ;
typedef  TYPE_1__ zend_class_entry ;
typedef  int /*<<< orphan*/  pdo_dbh_t ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static zval *FUNC5(pdo_dbh_t *dbh, zval *object, zend_class_entry *dbstmt_ce, zval *ctor_args) /* {{{ */
{
	if (!FUNC1(ctor_args)) {
		if (FUNC2(ctor_args) != IS_ARRAY) {
			FUNC4(dbh, NULL, "HY000", "constructor arguments must be passed as an array");
			return NULL;
		}
		if (!dbstmt_ce->constructor) {
			FUNC4(dbh, NULL, "HY000", "user-supplied statement does not accept constructor arguments");
			return NULL;
		}
	}

	if (FUNC0(FUNC3(object, dbstmt_ce) != SUCCESS)) {
		return NULL;
	}

	return object;
}