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
typedef  int /*<<< orphan*/  RelFileNodeBackend ;
typedef  scalar_t__ ForkNumber ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 scalar_t__ MAIN_FORKNUM ; 
 int O_RDWR ; 
 int FUNC1 (char*,int) ; 
 int PG_BINARY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int errno ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,int) ; 
 scalar_t__ FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(RelFileNodeBackend rnode, ForkNumber forkNum, bool isRedo)
{
	char	   *path;
	int			ret;

	path = FUNC11(rnode, forkNum);

	/*
	 * Delete or truncate the first segment.
	 */
	if (isRedo || forkNum != MAIN_FORKNUM || FUNC2(rnode))
	{
		/* First, forget any pending sync requests for the first segment */
		if (!FUNC2(rnode))
			FUNC9(rnode, forkNum, 0 /* first seg */ );

		/* Next unlink the file */
		ret = FUNC14(path);
		if (ret < 0 && errno != ENOENT)
			FUNC3(WARNING,
					(FUNC4(),
					 FUNC5("could not remove file \"%s\": %m", path)));
	}
	else
	{
		/* truncate(2) would be easier here, but Windows hasn't got it */
		int			fd;

		fd = FUNC1(path, O_RDWR | PG_BINARY);
		if (fd >= 0)
		{
			int			save_errno;

			ret = FUNC6(fd, 0);
			save_errno = errno;
			FUNC0(fd);
			errno = save_errno;
		}
		else
			ret = -1;
		if (ret < 0 && errno != ENOENT)
			FUNC3(WARNING,
					(FUNC4(),
					 FUNC5("could not truncate file \"%s\": %m", path)));

		/* Register request to unlink first segment later */
		FUNC10(rnode, forkNum, 0 /* first seg */ );
	}

	/*
	 * Delete any additional segments.
	 */
	if (ret >= 0)
	{
		char	   *segpath = (char *) FUNC7(FUNC13(path) + 12);
		BlockNumber segno;

		/*
		 * Note that because we loop until getting ENOENT, we will correctly
		 * remove all inactive segments as well as active ones.
		 */
		for (segno = 1;; segno++)
		{
			/*
			 * Forget any pending sync requests for this segment before we try
			 * to unlink.
			 */
			if (!FUNC2(rnode))
				FUNC9(rnode, forkNum, segno);

			FUNC12(segpath, "%s.%u", path, segno);
			if (FUNC14(segpath) < 0)
			{
				/* ENOENT is expected after the last segment... */
				if (errno != ENOENT)
					FUNC3(WARNING,
							(FUNC4(),
							 FUNC5("could not remove file \"%s\": %m", segpath)));
				break;
			}
		}
		FUNC8(segpath);
	}

	FUNC8(path);
}