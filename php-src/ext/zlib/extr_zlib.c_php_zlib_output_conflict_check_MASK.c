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
 int FAILURE ; 
 char* PHP_ZLIB_OUTPUT_HANDLER_NAME ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *handler_name, size_t handler_name_len)
{
	if (FUNC1() > 0) {
		if (FUNC2(handler_name, handler_name_len, FUNC0(PHP_ZLIB_OUTPUT_HANDLER_NAME))
		||	FUNC2(handler_name, handler_name_len, FUNC0("ob_gzhandler"))
		||  FUNC2(handler_name, handler_name_len, FUNC0("mb_output_handler"))
		||	FUNC2(handler_name, handler_name_len, FUNC0("URL-Rewriter"))) {
			return FAILURE;
		}
	}
	return SUCCESS;
}