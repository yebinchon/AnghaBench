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
typedef  int /*<<< orphan*/  tmppath ;
struct passwd {int /*<<< orphan*/  pw_dir; } ;
typedef  int /*<<< orphan*/  pwdbuf ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  CSIDL_APPDATA ; 
 int MAX_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct passwd*,char*,int,struct passwd**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

bool
FUNC6(char *buf, int bufsize)
{
#ifndef WIN32
	char		pwdbuf[BUFSIZ];
	struct passwd pwdstr;
	struct passwd *pwd = NULL;

	(void) FUNC3(FUNC2(), &pwdstr, pwdbuf, sizeof(pwdbuf), &pwd);
	if (pwd == NULL)
		return false;
	FUNC5(buf, pwd->pw_dir, bufsize);
	return true;
#else
	char		tmppath[MAX_PATH];

	ZeroMemory(tmppath, sizeof(tmppath));
	if (SHGetFolderPath(NULL, CSIDL_APPDATA, NULL, 0, tmppath) != S_OK)
		return false;
	snprintf(buf, bufsize, "%s/postgresql", tmppath);
	return true;
#endif
}