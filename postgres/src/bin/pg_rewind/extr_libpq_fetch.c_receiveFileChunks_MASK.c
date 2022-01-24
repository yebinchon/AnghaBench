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
typedef  char int64 ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 scalar_t__ BYTEAOID ; 
 scalar_t__ INT8OID ; 
#define  PGRES_SINGLE_TUPLE 129 
#define  PGRES_TUPLES_OK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEXTOID ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 char* FUNC19 (int) ; 
 char FUNC20 (char) ; 
 int /*<<< orphan*/  FUNC21 (char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char,int) ; 

__attribute__((used)) static void
FUNC23(const char *sql)
{
	PGresult   *res;

	if (FUNC12(conn, sql, 0, NULL, NULL, NULL, NULL, 1) != 1)
		FUNC16("could not send query: %s", FUNC1(conn));

	FUNC18("getting file chunks");

	if (FUNC13(conn) != 1)
		FUNC16("could not set libpq connection to single row mode");

	while ((res = FUNC4(conn)) != NULL)
	{
		char	   *filename;
		int			filenamelen;
		int64		chunkoff;
		int			chunksize;
		char	   *chunk;

		switch (FUNC11(res))
		{
			case PGRES_SINGLE_TUPLE:
				break;

			case PGRES_TUPLES_OK:
				FUNC0(res);
				continue;		/* final zero-row result */

			default:
				FUNC16("unexpected result while fetching remote files: %s",
						 FUNC10(res));
		}

		/* sanity check the result set */
		if (FUNC8(res) != 3 || FUNC9(res) != 1)
			FUNC16("unexpected result set size while fetching remote files");

		if (FUNC3(res, 0) != TEXTOID ||
			FUNC3(res, 1) != INT8OID ||
			FUNC3(res, 2) != BYTEAOID)
		{
			FUNC16("unexpected data types in result set while fetching remote files: %u %u %u",
					 FUNC3(res, 0), FUNC3(res, 1), FUNC3(res, 2));
		}

		if (FUNC2(res, 0) != 1 &&
			FUNC2(res, 1) != 1 &&
			FUNC2(res, 2) != 1)
		{
			FUNC16("unexpected result format while fetching remote files");
		}

		if (FUNC5(res, 0, 0) ||
			FUNC5(res, 0, 1))
		{
			FUNC16("unexpected null values in result while fetching remote files");
		}

		if (FUNC6(res, 0, 1) != sizeof(int64))
			FUNC16("unexpected result length while fetching remote files");

		/* Read result set to local variables */
		FUNC14(&chunkoff, FUNC7(res, 0, 1), sizeof(int64));
		chunkoff = FUNC20(chunkoff);
		chunksize = FUNC6(res, 0, 2);

		filenamelen = FUNC6(res, 0, 0);
		filename = FUNC19(filenamelen + 1);
		FUNC14(filename, FUNC7(res, 0, 0), filenamelen);
		filename[filenamelen] = '\0';

		chunk = FUNC7(res, 0, 2);

		/*
		 * If a file has been deleted on the source, remove it on the target
		 * as well.  Note that multiple unlink() calls may happen on the same
		 * file if multiple data chunks are associated with it, hence ignore
		 * unconditionally anything missing.  If this file is not a relation
		 * data file, then it has been already truncated when creating the
		 * file chunk list at the previous execution of the filemap.
		 */
		if (FUNC5(res, 0, 2))
		{
			FUNC18("received null value for chunk for file \"%s\", file has been deleted",
						 filename);
			FUNC21(filename, true);
			FUNC17(filename);
			FUNC0(res);
			continue;
		}

		FUNC18("received chunk for file \"%s\", offset %lld, size %d",
					 filename, (long long int) chunkoff, chunksize);

		FUNC15(filename, false);

		FUNC22(chunk, chunkoff, chunksize);

		FUNC17(filename);

		FUNC0(res);
	}
}