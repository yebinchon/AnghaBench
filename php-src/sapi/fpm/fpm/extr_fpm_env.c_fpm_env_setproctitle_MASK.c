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
 char* SETPROCTITLE_PREFIX ; 
 int /*<<< orphan*/ ** fpm_env_argv ; 
 scalar_t__ fpm_env_argv_len ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

void FUNC5(char *title) /* {{{ */
{
#if defined(HAVE_SETPROCTITLE_FAST)
	setproctitle_fast("%s", title);
#elif defined(HAVE_SETPROCTITLE)
	setproctitle("%s", title);
#else
#ifdef __linux__
	if (fpm_env_argv != NULL && fpm_env_argv_len > FUNC3(SETPROCTITLE_PREFIX) + 3) {
		FUNC0(fpm_env_argv[0], 0, fpm_env_argv_len);
		FUNC4(fpm_env_argv[0], SETPROCTITLE_PREFIX, fpm_env_argv_len - 2);
		FUNC4(fpm_env_argv[0] + FUNC3(SETPROCTITLE_PREFIX), title, fpm_env_argv_len - FUNC3(SETPROCTITLE_PREFIX) - 2);
		fpm_env_argv[1] = NULL;
	}
#endif
#endif
}