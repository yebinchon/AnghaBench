#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
struct stat {int st_size; } ;
typedef  int pgoff_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  pd_checksum; } ;
typedef  TYPE_1__* PageHeader ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int BLCKSZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int RELSEG_SIZE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int TAR_SEND_SIZE ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *,struct stat*,int) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int,char const*,int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char const*,char*) ; 
 char* FUNC19 (char const*) ; 
 int /*<<< orphan*/  noverify_checksums ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (char,char*,size_t) ; 
 scalar_t__ startptr ; 
 char* FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int total_checksum_failures ; 

__attribute__((used)) static bool
FUNC25(const char *readfilename, const char *tarfilename, struct stat *statbuf,
		 bool missing_ok, Oid dboid)
{
	FILE	   *fp;
	BlockNumber blkno = 0;
	bool		block_retry = false;
	char		buf[TAR_SEND_SIZE];
	uint16		checksum;
	int			checksum_failures = 0;
	off_t		cnt;
	int			i;
	pgoff_t		len = 0;
	char	   *page;
	size_t		pad;
	PageHeader	phdr;
	int			segmentno = 0;
	char	   *segmentpath;
	bool		verify_checksum = false;

	fp = FUNC0(readfilename, "rb");
	if (fp == NULL)
	{
		if (errno == ENOENT && missing_ok)
			return false;
		FUNC11(ERROR,
				(FUNC12(),
				 FUNC13("could not open file \"%s\": %m", readfilename)));
	}

	FUNC9(tarfilename, NULL, statbuf, false);

	if (!noverify_checksums && FUNC3())
	{
		char	   *filename;

		/*
		 * Get the filename (excluding path).  As last_dir_separator()
		 * includes the last directory separator, we chop that off by
		 * incrementing the pointer.
		 */
		filename = FUNC19(readfilename) + 1;

		if (FUNC18(readfilename, filename))
		{
			verify_checksum = true;

			/*
			 * Cut off at the segment boundary (".") to get the segment number
			 * in order to mix it into the checksum.
			 */
			segmentpath = FUNC23(filename, ".");
			if (segmentpath != NULL)
			{
				segmentno = FUNC10(segmentpath + 1);
				if (segmentno == 0)
					FUNC11(ERROR,
							(FUNC13("invalid segment number %d in file \"%s\"",
									segmentno, filename)));
			}
		}
	}

	while ((cnt = FUNC16(buf, 1, FUNC6(sizeof(buf), statbuf->st_size - len), fp)) > 0)
	{
		/*
		 * The checksums are verified at block level, so we iterate over the
		 * buffer in chunks of BLCKSZ, after making sure that
		 * TAR_SEND_SIZE/buf is divisible by BLCKSZ and we read a multiple of
		 * BLCKSZ bytes.
		 */
		FUNC1(TAR_SEND_SIZE % BLCKSZ == 0);

		if (verify_checksum && (cnt % BLCKSZ != 0))
		{
			FUNC11(WARNING,
					(FUNC13("could not verify checksum in file \"%s\", block "
							"%d: read buffer size %d and page size %d "
							"differ",
							readfilename, blkno, (int) cnt, BLCKSZ)));
			verify_checksum = false;
		}

		if (verify_checksum)
		{
			for (i = 0; i < cnt / BLCKSZ; i++)
			{
				page = buf + BLCKSZ * i;

				/*
				 * Only check pages which have not been modified since the
				 * start of the base backup. Otherwise, they might have been
				 * written only halfway and the checksum would not be valid.
				 * However, replaying WAL would reinstate the correct page in
				 * this case. We also skip completely new pages, since they
				 * don't have a checksum yet.
				 */
				if (!FUNC8(page) && FUNC7(page) < startptr)
				{
					checksum = FUNC20((char *) page, blkno + segmentno * RELSEG_SIZE);
					phdr = (PageHeader) page;
					if (phdr->pd_checksum != checksum)
					{
						/*
						 * Retry the block on the first failure.  It's
						 * possible that we read the first 4K page of the
						 * block just before postgres updated the entire block
						 * so it ends up looking torn to us.  We only need to
						 * retry once because the LSN should be updated to
						 * something we can ignore on the next pass.  If the
						 * error happens again then it is a true validation
						 * failure.
						 */
						if (block_retry == false)
						{
							/* Reread the failed block */
							if (FUNC17(fp, -(cnt - BLCKSZ * i), SEEK_CUR) == -1)
							{
								FUNC11(ERROR,
										(FUNC12(),
										 FUNC13("could not fseek in file \"%s\": %m",
												readfilename)));
							}

							if (FUNC16(buf + BLCKSZ * i, 1, BLCKSZ, fp) != BLCKSZ)
							{
								/*
								 * If we hit end-of-file, a concurrent
								 * truncation must have occurred, so break out
								 * of this loop just as if the initial fread()
								 * returned 0. We'll drop through to the same
								 * code that handles that case. (We must fix
								 * up cnt first, though.)
								 */
								if (FUNC15(fp))
								{
									cnt = BLCKSZ * i;
									break;
								}

								FUNC11(ERROR,
										(FUNC12(),
										 FUNC13("could not reread block %d of file \"%s\": %m",
												blkno, readfilename)));
							}

							if (FUNC17(fp, cnt - BLCKSZ * i - BLCKSZ, SEEK_CUR) == -1)
							{
								FUNC11(ERROR,
										(FUNC12(),
										 FUNC13("could not fseek in file \"%s\": %m",
												readfilename)));
							}

							/* Set flag so we know a retry was attempted */
							block_retry = true;

							/* Reset loop to validate the block again */
							i--;
							continue;
						}

						checksum_failures++;

						if (checksum_failures <= 5)
							FUNC11(WARNING,
									(FUNC13("checksum verification failed in "
											"file \"%s\", block %d: calculated "
											"%X but expected %X",
											readfilename, blkno, checksum,
											phdr->pd_checksum)));
						if (checksum_failures == 5)
							FUNC11(WARNING,
									(FUNC13("further checksum verification "
											"failures in file \"%s\" will not "
											"be reported", readfilename)));
					}
				}
				block_retry = false;
				blkno++;
			}
		}

		/* Send the chunk as a CopyData message */
		if (FUNC22('d', buf, cnt))
			FUNC11(ERROR,
					(FUNC13("base backup could not send data, aborting backup")));

		len += cnt;
		FUNC24(cnt);

		if (FUNC15(fp) || len >= statbuf->st_size)
		{
			/*
			 * Reached end of file. The file could be longer, if it was
			 * extended while we were sending it, but for a base backup we can
			 * ignore such extended data. It will be restored from WAL.
			 */
			break;
		}
	}

	FUNC2(fp, readfilename);

	/* If the file was truncated while we were sending it, pad it with zeros */
	if (len < statbuf->st_size)
	{
		FUNC5(buf, 0, sizeof(buf));
		while (len < statbuf->st_size)
		{
			cnt = FUNC6(sizeof(buf), statbuf->st_size - len);
			FUNC22('d', buf, cnt);
			len += cnt;
			FUNC24(cnt);
		}
	}

	/*
	 * Pad to 512 byte boundary, per tar format requirements. (This small
	 * piece of data is probably not worth throttling.)
	 */
	pad = ((len + 511) & ~511) - len;
	if (pad > 0)
	{
		FUNC5(buf, 0, pad);
		FUNC22('d', buf, pad);
	}

	FUNC4(fp);

	if (checksum_failures > 1)
	{
		FUNC11(WARNING,
				(FUNC14("file \"%s\" has a total of %d checksum verification failure",
							   "file \"%s\" has a total of %d checksum verification failures",
							   checksum_failures,
							   readfilename, checksum_failures)));

		FUNC21(dboid, checksum_failures);
	}

	total_checksum_failures += checksum_failures;

	return true;
}