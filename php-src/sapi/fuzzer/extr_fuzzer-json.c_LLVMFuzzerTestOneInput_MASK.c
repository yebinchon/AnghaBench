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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  php_json_parser ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,size_t,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(const uint8_t *Data, size_t Size) {
#ifdef HAVE_JSON
	char *data = malloc(Size+1);
	memcpy(data, Data, Size);
	data[Size] = '\0';

	if (fuzzer_request_startup() == FAILURE) {
		return 0;
	}

	for (int option = 0; option <=1; ++option) {
		zval result;
		php_json_parser parser;
		php_json_parser_init(&parser, &result, data, Size, option, 10);
		if (php_json_yyparse(&parser) == SUCCESS) {
			zval_ptr_dtor(&result);
		}
	}

	php_request_shutdown(NULL);

	free(data);
#else
	FUNC1(stderr, "\n\nERROR:\nPHP built without JSON, recompile with --enable-json to use this fuzzer\n");
	FUNC0(1);
#endif
	return 0;
}