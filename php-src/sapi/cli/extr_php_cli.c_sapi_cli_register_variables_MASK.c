#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_2__ {scalar_t__ (* input_filter ) (int /*<<< orphan*/ ,char*,char**,size_t,size_t*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 
 char* php_self ; 
 TYPE_1__ sapi_module ; 
 char* script_filename ; 
 size_t FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,char**,size_t,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,char**,size_t,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,char**,size_t,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,char**,size_t,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,char**,size_t,size_t*) ; 

__attribute__((used)) static void FUNC8(zval *track_vars_array) /* {{{ */
{
	size_t len;
	char   *docroot = "";

	/* In CGI mode, we consider the environment to be a part of the server
	 * variables
	 */
	FUNC0(track_vars_array);

	/* Build the special-case PHP_SELF variable for the CLI version */
	len = FUNC2(php_self);
	if (sapi_module.input_filter(PARSE_SERVER, "PHP_SELF", &php_self, len, &len)) {
		FUNC1("PHP_SELF", php_self, track_vars_array);
	}
	if (sapi_module.input_filter(PARSE_SERVER, "SCRIPT_NAME", &php_self, len, &len)) {
		FUNC1("SCRIPT_NAME", php_self, track_vars_array);
	}
	/* filenames are empty for stdin */
	len = FUNC2(script_filename);
	if (sapi_module.input_filter(PARSE_SERVER, "SCRIPT_FILENAME", &script_filename, len, &len)) {
		FUNC1("SCRIPT_FILENAME", script_filename, track_vars_array);
	}
	if (sapi_module.input_filter(PARSE_SERVER, "PATH_TRANSLATED", &script_filename, len, &len)) {
		FUNC1("PATH_TRANSLATED", script_filename, track_vars_array);
	}
	/* just make it available */
	len = 0U;
	if (sapi_module.input_filter(PARSE_SERVER, "DOCUMENT_ROOT", &docroot, len, &len)) {
		FUNC1("DOCUMENT_ROOT", docroot, track_vars_array);
	}
}