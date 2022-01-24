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
typedef  int /*<<< orphan*/  zval ;
struct php_sqlite3_bound_param {int /*<<< orphan*/  parameter; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct php_sqlite3_bound_param*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(zval *data) /* {{{ */
{
	struct php_sqlite3_bound_param *param = (struct php_sqlite3_bound_param*)FUNC2(data);

	if (param->name) {
		FUNC4(param->name, 0);
	}

	if (!FUNC1(param->parameter)) {
		FUNC5(&(param->parameter));
		FUNC0(&param->parameter);
	}
	FUNC3(param);
}