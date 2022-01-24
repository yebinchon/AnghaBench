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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static char* FUNC6(void) {
	size_t i;
	const char *compilers[] = {"llvm-gcc", "clang", "gcc"};
	char *output = FUNC3 ("CC");

	if (output) {
		return output;
	}

	for (i = 0; i < 3; i++) {
		output = FUNC2 (compilers[i]);
		if (FUNC4 (output, compilers[i])) {
			FUNC1 (output);
			return FUNC5 (compilers[i]);
		}
		FUNC1 (output);
	}

	FUNC0 ("Couldn't find a compiler ! Please, set CC.\n");
	return NULL;
}