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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  auto_globals_jit ; 
 int /*<<< orphan*/  php_auto_globals_create_cookie ; 
 int /*<<< orphan*/  php_auto_globals_create_env ; 
 int /*<<< orphan*/  php_auto_globals_create_files ; 
 int /*<<< orphan*/  php_auto_globals_create_get ; 
 int /*<<< orphan*/  php_auto_globals_create_post ; 
 int /*<<< orphan*/  php_auto_globals_create_request ; 
 int /*<<< orphan*/  php_auto_globals_create_server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

void FUNC3(void)
{
	FUNC1(FUNC2("_GET", sizeof("_GET")-1, 1), 0, php_auto_globals_create_get);
	FUNC1(FUNC2("_POST", sizeof("_POST")-1, 1), 0, php_auto_globals_create_post);
	FUNC1(FUNC2("_COOKIE", sizeof("_COOKIE")-1, 1), 0, php_auto_globals_create_cookie);
	FUNC1(FUNC2("_SERVER", sizeof("_SERVER")-1, 1), FUNC0(auto_globals_jit), php_auto_globals_create_server);
	FUNC1(FUNC2("_ENV", sizeof("_ENV")-1, 1), FUNC0(auto_globals_jit), php_auto_globals_create_env);
	FUNC1(FUNC2("_REQUEST", sizeof("_REQUEST")-1, 1), FUNC0(auto_globals_jit), php_auto_globals_create_request);
	FUNC1(FUNC2("_FILES", sizeof("_FILES")-1, 1), 0, php_auto_globals_create_files);
}