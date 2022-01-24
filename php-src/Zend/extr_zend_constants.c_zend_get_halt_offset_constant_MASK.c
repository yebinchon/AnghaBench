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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_constant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_execute_data ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  zend_constants ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_constant *FUNC7(const char *name, size_t name_len)
{
	zend_constant *c;
	static const char haltoff[] = "__COMPILER_HALT_OFFSET__";

	if (!FUNC0(current_execute_data)) {
		return NULL;
	} else if (name_len == sizeof("__COMPILER_HALT_OFFSET__")-1 &&
	          !FUNC1(name, "__COMPILER_HALT_OFFSET__", sizeof("__COMPILER_HALT_OFFSET__")-1)) {
		const char *cfilename;
		zend_string *haltname;
		size_t clen;

		cfilename = FUNC3();
		clen = FUNC2(cfilename);
		/* check for __COMPILER_HALT_OFFSET__ */
		haltname = FUNC5(haltoff,
			sizeof("__COMPILER_HALT_OFFSET__") - 1, cfilename, clen, 0);
		c = FUNC4(FUNC0(zend_constants), haltname);
		FUNC6(haltname);
		return c;
	} else {
		return NULL;
	}
}