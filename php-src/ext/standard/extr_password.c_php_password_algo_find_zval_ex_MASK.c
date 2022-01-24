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
 scalar_t__ IS_LONG ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ IS_STRING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const php_password_algo_argon2i ; 
 int /*<<< orphan*/  const php_password_algo_argon2id ; 
 int /*<<< orphan*/  const php_password_algo_bcrypt ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const php_password_algo* FUNC6(zval *arg, const php_password_algo* default_algo) {
	if (!arg || (FUNC2(arg) == IS_NULL)) {
		return default_algo;
	}

	if (FUNC2(arg) == IS_LONG) {
		switch (FUNC0(arg)) {
			case 0: return default_algo;
			case 1: return &php_password_algo_bcrypt;
#if HAVE_ARGON2LIB
			case 2: return &php_password_algo_argon2i;
			case 3: return &php_password_algo_argon2id;
#else
			case 2:
				{
				zend_string *n = FUNC4("argon2i", sizeof("argon2i")-1, 0);
				const php_password_algo* ret = FUNC3(n);
				FUNC5(n);
				return ret;
				}
			case 3:
				{
				zend_string *n = FUNC4("argon2id", sizeof("argon2id")-1, 0);
				const php_password_algo* ret = FUNC3(n);
				FUNC5(n);
				return ret;
				}
#endif
		}
		return NULL;
	}

	if (FUNC2(arg) != IS_STRING) {
		return NULL;
	}

	return FUNC3(FUNC1(arg));
}