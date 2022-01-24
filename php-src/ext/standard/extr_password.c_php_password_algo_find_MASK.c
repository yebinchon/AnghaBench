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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  php_password_algo ;

/* Variables and functions */
 scalar_t__ IS_PTR ; 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  php_password_algos ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

const php_password_algo* FUNC3(const zend_string *ident) {
	zval *tmp;

	if (!ident) {
		return NULL;
	}

	tmp = FUNC2(&php_password_algos, (zend_string*)ident);
	if (!tmp || (FUNC1(tmp) != IS_PTR)) {
		return NULL;
	}

	return FUNC0(tmp);
}