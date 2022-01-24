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
typedef  int /*<<< orphan*/  SharedFileSet ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

File
FUNC6(SharedFileSet *fileset, const char *name)
{
	char		path[MAXPGPATH];
	File		file;

	FUNC3(path, fileset, name);
	file = FUNC2(path, false);

	/* If we failed, see if we need to create the directory on demand. */
	if (file <= 0)
	{
		char		tempdirpath[MAXPGPATH];
		char		filesetpath[MAXPGPATH];
		Oid			tablespace = FUNC0(fileset, name);

		FUNC5(tempdirpath, tablespace);
		FUNC4(filesetpath, fileset, tablespace);
		FUNC1(tempdirpath, filesetpath);
		file = FUNC2(path, true);
	}

	return file;
}