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
typedef  int /*<<< orphan*/  tempfilepath ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ File ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MyProcPid ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PG_BINARY ; 
 char* PG_TEMP_FILE_PREFIX ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tempFileCounter ; 

__attribute__((used)) static File
FUNC5(Oid tblspcOid, bool rejectError)
{
	char		tempdirpath[MAXPGPATH];
	char		tempfilepath[MAXPGPATH];
	File		file;

	FUNC2(tempdirpath, tblspcOid);

	/*
	 * Generate a tempfile name that should be unique within the current
	 * database instance.
	 */
	FUNC4(tempfilepath, sizeof(tempfilepath), "%s/%s%d.%ld",
			 tempdirpath, PG_TEMP_FILE_PREFIX, MyProcPid, tempFileCounter++);

	/*
	 * Open the file.  Note: we don't use O_EXCL, in case there is an orphaned
	 * temp file that can be reused.
	 */
	file = FUNC1(tempfilepath,
							O_RDWR | O_CREAT | O_TRUNC | PG_BINARY);
	if (file <= 0)
	{
		/*
		 * We might need to create the tablespace's tempfile directory, if no
		 * one has yet done so.
		 *
		 * Don't check for an error from MakePGDirectory; it could fail if
		 * someone else just did the same thing.  If it doesn't work then
		 * we'll bomb out on the second create attempt, instead.
		 */
		(void) FUNC0(tempdirpath);

		file = FUNC1(tempfilepath,
								O_RDWR | O_CREAT | O_TRUNC | PG_BINARY);
		if (file <= 0 && rejectError)
			FUNC3(ERROR, "could not create temporary file \"%s\": %m",
				 tempfilepath);
	}

	return file;
}