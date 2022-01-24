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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  dummy ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ save_files ; 
 int /*<<< orphan*/  sd ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*,int,int,int,int,int,int,int,char*) ; 
 scalar_t__ FUNC5 (void*,char**,int*,int*,int*,int*,int*,int*,int*,char**) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC8(char *verb, void *clientData)
{
	char *filename;
	int curLine;
	int curCol;
	int selStartLine;
	int selStartCol;
	int selEndLine;
	int selEndCol;
	int selLength;
	char *selection;

	char buf[2*MAXPATHLEN];
/* Later: needsFilePos indicates whether or not we need to fetch all this
 * info for this verb... for now, however, it looks as if
 * eserve parsing routines depend on it always being present */

	if (FUNC5(clientData,
				   &filename,
				   &curLine,
				   &curCol,
				   &selStartLine,
				   &selStartCol,
				   &selEndLine,
				   &selEndCol,
				   &selLength,
				   &selection)) {
		if (selection == NULL) {
			selection = FUNC0("");
		}

		/* Should I save the files??? This is currently done by checking
		   if the verb is one of a few recognized ones. Later we can pass
		   this list from eserve to the editor (it's currently hardcoded in
		   vi and emacs as well). */
		if (save_files) {
			if (!FUNC2(verb, "build.build") || !FUNC2(verb, "build.build-file") ||
			    !FUNC2(verb, "debug.fix") || !FUNC2(verb, "debug.fix-all")) {
				FUNC6();
			}
		}

		FUNC4(buf, sizeof(buf),
			FUNC0("toolVerb %s %s %d,%d %d,%d %d,%d %d %s\n"),
			verb,
			filename,
			curLine, curCol,
			selStartLine, selStartCol,
			selEndLine, selEndCol,
			selLength,
			selection);
		dummy = FUNC7(sd, buf, FUNC3(buf));
		if (*selection) {
			FUNC1(selection);
		}
	}
}