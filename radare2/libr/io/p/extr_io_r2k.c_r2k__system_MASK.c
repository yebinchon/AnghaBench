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
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static char *FUNC5(RIO *io, RIODesc *fd, const char *cmd) {
	if (!FUNC3 (cmd, "")) {
		return NULL;
	}
	if (!FUNC4 (cmd, "mod", 3)) {
#if __WINDOWS__
		GetSystemModules (io);
#endif
	} else {
#if defined (__linux__) && !defined (__GNU__)
		(void)FUNC2 (io, fd, cmd);
		return NULL;
#else
		eprintf ("Try: '=!mod'\n    '.=!mod'\n");
#endif
	}
	return NULL;
}