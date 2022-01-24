#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* files; int readOnly; int /*<<< orphan*/  name; int /*<<< orphan*/ * fileset; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  SharedFileSet ;
typedef  scalar_t__ File ;
typedef  TYPE_1__ BufFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXPGPATH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 
 TYPE_1__* FUNC6 (int) ; 
 scalar_t__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 scalar_t__* FUNC9 (scalar_t__*,int) ; 

BufFile *
FUNC10(SharedFileSet *fileset, const char *name)
{
	BufFile    *file;
	char		segment_name[MAXPGPATH];
	Size		capacity = 16;
	File	   *files;
	int			nfiles = 0;

	files = FUNC7(sizeof(File) * capacity);

	/*
	 * We don't know how many segments there are, so we'll probe the
	 * filesystem to find out.
	 */
	for (;;)
	{
		/* See if we need to expand our file segment array. */
		if (nfiles + 1 > capacity)
		{
			capacity *= 2;
			files = FUNC9(files, sizeof(File) * capacity);
		}
		/* Try to load a segment. */
		FUNC2(segment_name, name, nfiles);
		files[nfiles] = FUNC1(fileset, segment_name);
		if (files[nfiles] <= 0)
			break;
		++nfiles;

		FUNC0();
	}

	/*
	 * If we didn't find any files at all, then no BufFile exists with this
	 * name.
	 */
	if (nfiles == 0)
		FUNC3(ERROR,
				(FUNC4(),
				 FUNC5("could not open temporary file \"%s\" from BufFile \"%s\": %m",
						segment_name, name)));

	file = FUNC6(nfiles);
	file->files = files;
	file->readOnly = true;		/* Can't write to files opened this way */
	file->fileset = fileset;
	file->name = FUNC8(name);

	return file;
}