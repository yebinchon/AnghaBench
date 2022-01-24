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
struct stat {int /*<<< orphan*/  st_size; } ;
struct TYPE_3__ {int fdstate; scalar_t__ resowner; int /*<<< orphan*/  fileName; scalar_t__ fileSize; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ Vfd ;
typedef  size_t File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int FD_DELETE_AT_CLOSE ; 
 int FD_TEMP_FILE_LIMIT ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  VFD_CLOSED ; 
 TYPE_1__* VfdCache ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int errno ; 
 int /*<<< orphan*/  nfile ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  temporary_files_size ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

void
FUNC13(File file)
{
	Vfd		   *vfdP;

	FUNC0(FUNC4(file));

	FUNC1(FUNC10(LOG, "FileClose: %d (%s)",
			   file, VfdCache[file].fileName));

	vfdP = &VfdCache[file];

	if (!FUNC3(file))
	{
		/* close the file */
		if (FUNC8(vfdP->fd) != 0)
		{
			/*
			 * We may need to panic on failure to close non-temporary files;
			 * see LruDelete.
			 */
			FUNC10(vfdP->fdstate & FD_TEMP_FILE_LIMIT ? LOG : FUNC9(LOG),
				 "could not close file \"%s\": %m", vfdP->fileName);
		}

		--nfile;
		vfdP->fd = VFD_CLOSED;

		/* remove the file from the lru ring */
		FUNC2(file);
	}

	if (vfdP->fdstate & FD_TEMP_FILE_LIMIT)
	{
		/* Subtract its size from current usage (do first in case of error) */
		temporary_files_size -= vfdP->fileSize;
		vfdP->fileSize = 0;
	}

	/*
	 * Delete the file if it was temporary, and make a log entry if wanted
	 */
	if (vfdP->fdstate & FD_DELETE_AT_CLOSE)
	{
		struct stat filestats;
		int			stat_errno;

		/*
		 * If we get an error, as could happen within the ereport/elog calls,
		 * we'll come right back here during transaction abort.  Reset the
		 * flag to ensure that we can't get into an infinite loop.  This code
		 * is arranged to ensure that the worst-case consequence is failing to
		 * emit log message(s), not failing to attempt the unlink.
		 */
		vfdP->fdstate &= ~FD_DELETE_AT_CLOSE;


		/* first try the stat() */
		if (FUNC11(vfdP->fileName, &filestats))
			stat_errno = errno;
		else
			stat_errno = 0;

		/* in any case do the unlink */
		if (FUNC12(vfdP->fileName))
			FUNC10(LOG, "could not unlink file \"%s\": %m", vfdP->fileName);

		/* and last report the stat results */
		if (stat_errno == 0)
			FUNC6(vfdP->fileName, filestats.st_size);
		else
		{
			errno = stat_errno;
			FUNC10(LOG, "could not stat file \"%s\": %m", vfdP->fileName);
		}
	}

	/* Unregister it from the resource owner */
	if (vfdP->resowner)
		FUNC7(vfdP->resowner, file);

	/*
	 * Return the Vfd slot to the free list
	 */
	FUNC5(file);
}