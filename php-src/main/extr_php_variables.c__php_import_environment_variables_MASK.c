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
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_uchar ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,size_t,int /*<<< orphan*/ ) ; 

void FUNC14(zval *array_ptr)
{
	char **env, *p;
	size_t name_len, len;
	zval val;
	zend_ulong idx;

	FUNC9();

	for (env = environ; env != NULL && *env != NULL; env++) {
		p = FUNC7(*env, '=');
		if (!p
		 || p == *env
		 || !FUNC11(*env, p)) {
			/* malformed entry? */
			continue;
		}
		name_len = p - *env;
		p++;
		len = FUNC8(p);
		if (len == 0) {
			FUNC2(&val);
		} else if (len == 1) {
			FUNC3(&val, FUNC1((zend_uchar)*p));
		} else {
			FUNC4(&val, FUNC13(p, len, 0));
		}
		if (FUNC0(*env, name_len, idx)) {
			FUNC12(FUNC5(array_ptr), idx, &val);
		} else {
			FUNC6(*env, name_len, &val, FUNC5(array_ptr));
		}
	}
	
	FUNC10();
}