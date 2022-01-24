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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RTLD_NEXT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void* FUNC6(char* symname, void* proxyfunc) {

	void *funcptr = FUNC3(RTLD_NEXT, symname);

	if(!funcptr) {
		FUNC5(stderr, "Cannot load symbol '%s' %s\n", symname, FUNC2());
		FUNC4(1);
	} else {
		FUNC0("loaded symbol '%s'" " real addr %p  wrapped addr %p\n", symname, funcptr, proxyfunc);
	}
	if(funcptr == proxyfunc) {
		FUNC0("circular reference detected, aborting!\n");
		FUNC1();
	}
	return funcptr;
}