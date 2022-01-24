#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_3__ {char* fileName; int fileFlags; int fdstate; int /*<<< orphan*/ * resowner; scalar_t__ fileSize; int /*<<< orphan*/  fileMode; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ Vfd ;
typedef  size_t File ;

/* Variables and functions */
 size_t FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  LOG ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* VfdCache ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  nfile ; 
 char* FUNC11 (char const*) ; 

File
FUNC12(const char *fileName, int fileFlags, mode_t fileMode)
{
	char	   *fnamecopy;
	File		file;
	Vfd		   *vfdP;

	FUNC2(FUNC6(LOG, "PathNameOpenFilePerm: %s %x %o",
			   fileName, fileFlags, fileMode));

	/*
	 * We need a malloc'd copy of the file name; fail cleanly if no room.
	 */
	fnamecopy = FUNC11(fileName);
	if (fnamecopy == NULL)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_OUT_OF_MEMORY),
				 FUNC9("out of memory")));

	file = FUNC0();
	vfdP = &VfdCache[file];

	/* Close excess kernel FDs. */
	FUNC5();

	vfdP->fd = FUNC1(fileName, fileFlags, fileMode);

	if (vfdP->fd < 0)
	{
		int			save_errno = errno;

		FUNC3(file);
		FUNC10(fnamecopy);
		errno = save_errno;
		return -1;
	}
	++nfile;
	FUNC2(FUNC6(LOG, "PathNameOpenFile: success %d",
			   vfdP->fd));

	FUNC4(file);

	vfdP->fileName = fnamecopy;
	/* Saved flags are adjusted to be OK for re-opening file */
	vfdP->fileFlags = fileFlags & ~(O_CREAT | O_TRUNC | O_EXCL);
	vfdP->fileMode = fileMode;
	vfdP->fileSize = 0;
	vfdP->fdstate = 0x0;
	vfdP->resowner = NULL;

	return file;
}