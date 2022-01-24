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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char**) ; 
 scalar_t__ FUNC4 () ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(const uint8_t *Data, size_t Size) {
#ifdef HAVE_MBREGEX
	char *args[2];
	char *data = malloc(Size+1);
	memcpy(data, Data, Size);
	data[Size] = '\0';

	if (fuzzer_request_startup() == FAILURE) {
		return 0;
	}

	args[0] = data;
	args[1] = "test123";
	fuzzer_call_php_func("mb_ereg", 2, args);

	args[0] = data;
	args[1] = "test123";
	fuzzer_call_php_func("mb_eregi", 2, args);

	args[0] = data;
	args[1] = data;
	fuzzer_call_php_func("mb_ereg", 2, args);

	args[0] = data;
	args[1] = data;
	fuzzer_call_php_func("mb_eregi", 2, args);

	php_request_shutdown(NULL);

	free(data);
#else
	FUNC1(stderr, "\n\nERROR:\nPHP built without mbstring, recompile with --enable-mbstring to use this fuzzer\n");
	FUNC0(1);
#endif
	return 0;
}