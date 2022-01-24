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
typedef  int uint ;
typedef  int /*<<< orphan*/  renamecmd ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FALSE ; 
 int /*<<< orphan*/  F_CLI ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 size_t SH_EXEC ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* cp ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  editor ; 
 char* g_selpath ; 
 char* g_tmpfpath ; 
 int FUNC4 (int,char*,int) ; 
 char* mv ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selbufpos ; 
 int /*<<< orphan*/  FUNC6 (int,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * utils ; 

__attribute__((used)) static bool FUNC9(int choice, const char *path)
{
	int fd;
	uint count = 0, lines = 0;
	bool ret = FALSE;
	char *cmd = (choice == 'c' ? cp : mv);
	static const char formatcmd[] = "sed -i 's|^\\(\\(.*/\\)\\(.*\\)$\\)|#\\1\\n\\3|' %s";
	static const char renamecmd[] = "sed 's|^\\([^#][^/]\\?.*\\)$|%s/\\1|;s|^#\\(/.*\\)$|\\1|' %s | tr '\\n' '\\0' | xargs -0 -o -n2 %s";
	char buf[sizeof(renamecmd) + sizeof(cmd) + (PATH_MAX << 1)];

	fd = FUNC3();
	if (fd == -1)
		return ret;

	/* selsafe() returned TRUE for this to be called */
	if (!selbufpos) {
		FUNC7(buf, sizeof(buf), "cat %s | tr '\\0' '\\n' > %s", g_selpath, g_tmpfpath);
		FUNC8(utils[SH_EXEC], buf, NULL, NULL, F_CLI);

		count = FUNC4(fd, buf, sizeof(buf));
		if (!count)
			goto finish;
	} else
		FUNC6(fd, &count);

	FUNC2(fd);

	FUNC7(buf, sizeof(buf), formatcmd, g_tmpfpath);
	FUNC8(utils[SH_EXEC], buf, NULL, path, F_CLI);

	FUNC8(editor, g_tmpfpath, NULL, path, F_CLI);

	fd = FUNC5(g_tmpfpath, O_RDONLY);
	if (fd == -1)
		goto finish;

	lines = FUNC4(fd, buf, sizeof(buf));
	FUNC1(count);
	FUNC1(lines);
	if (!lines || (2 * count != lines)) {
		FUNC0("num mismatch");
		goto finish;
	}

	FUNC7(buf, sizeof(buf), renamecmd, path, g_tmpfpath, cmd);
	FUNC8(utils[SH_EXEC], buf, NULL, path, F_CLI);
	ret = TRUE;

finish:
	if (fd >= 0)
		FUNC2(fd);

	return ret;
}