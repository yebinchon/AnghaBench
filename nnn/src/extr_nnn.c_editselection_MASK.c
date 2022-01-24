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
struct stat {scalar_t__ st_size; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  F_CLI ; 
 int /*<<< orphan*/  F_NOTRACE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  copier ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  editor ; 
 int /*<<< orphan*/  FUNC4 (int,struct stat*) ; 
 int /*<<< orphan*/ * g_tmpfpath ; 
 int nselected ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* pselbuf ; 
 size_t FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  selbuflen ; 
 scalar_t__ selbufpos ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 

__attribute__((used)) static bool FUNC12(void)
{
	bool ret = FALSE;
	int fd, lines = 0;
	ssize_t count;
	struct stat sb;

	if (!selbufpos) {
		FUNC0("empty selection");
		return FALSE;
	}

	fd = FUNC3();
	if (fd == -1) {
		FUNC0("couldn't create tmp file");
		return FALSE;
	}

	FUNC8(fd, NULL);
	FUNC2(fd);

	FUNC9(editor, g_tmpfpath, NULL, NULL, F_CLI);

	fd = FUNC5(g_tmpfpath, O_RDONLY);
	if (fd == -1) {
		FUNC0("couldn't read tmp file");
		FUNC10(g_tmpfpath);
		return FALSE;
	}

	FUNC4(fd, &sb);

	if (sb.st_size > selbufpos) {
		FUNC0("edited buffer larger than pervious");
		goto emptyedit;
	}

	count = FUNC6(fd, pselbuf, selbuflen);
	FUNC2(fd);
	FUNC10(g_tmpfpath);

	if (!count) {
		ret = TRUE;
		goto emptyedit;
	}

	if (count < 0) {
		FUNC0("error reading tmp file");
		goto emptyedit;
	}

	FUNC7();
	selbufpos = count;
	/* The last character should be '\n' */
	pselbuf[--count] = '\0';
	for (--count; count > 0; --count) {
		/* Replace every '\n' that separates two paths */
		if (pselbuf[count] == '\n' && pselbuf[count + 1] == '/') {
			++lines;
			pselbuf[count] = '\0';
		}
	}

	/* Add a line for the last file */
	++lines;

	if (lines > nselected) {
		FUNC0("files added to selection");
		goto emptyedit;
	}

	nselected = lines;
	FUNC11(pselbuf, selbufpos - 1);
	FUNC9(copier, NULL, NULL, NULL, F_NOTRACE);

	return TRUE;

emptyedit:
	FUNC7();
	FUNC1();
	return ret;
}