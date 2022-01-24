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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  F_CLI ; 
 int /*<<< orphan*/  PATH_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 char* g_buf ; 
 int /*<<< orphan*/  g_tmpfpath ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ,char*,char*,char const*,int) ; 
 int /*<<< orphan*/  pager ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 size_t FUNC11 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC12(const char *fpath, const struct stat *sb)
{
	int fd;
	FILE *fp;
	char *p, *begin = g_buf;
	size_t r;

	fd = FUNC3();
	if (fd == -1)
		return FALSE;

	r = FUNC11(g_buf, "stat \"", PATH_MAX);
	r += FUNC11(g_buf + r - 1, fpath, PATH_MAX);
	g_buf[r - 2] = '\"';
	g_buf[r - 1] = '\0';
	FUNC0(g_buf);

	fp = FUNC5(fd, "w");
	if (!fp) {
		FUNC2(fd);
		return FALSE;
	}

	FUNC8(g_buf, fp);

	if (FUNC1(sb->st_mode)) {
		/* Show file(1) output */
		p = FUNC7(g_buf, CMD_LEN_MAX, "file", "-b", fpath, FALSE);
		if (p) {
			FUNC6(fp, "\n\n ");
			while (*p) {
				if (*p == ',') {
					*p = '\0';
					FUNC6(fp, " %s\n", begin);
					begin = p + 1;
				}

				++p;
			}
			FUNC6(fp, " %s", begin);
		}
	}

	FUNC6(fp, "\n\n");
	FUNC4(fp);
	FUNC2(fd);

	FUNC9(pager, g_tmpfpath, NULL, NULL, F_CLI);
	FUNC10(g_tmpfpath);
	return TRUE;
}