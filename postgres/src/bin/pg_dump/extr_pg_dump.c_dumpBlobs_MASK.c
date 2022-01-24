#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int remoteVersion; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  INV_READ ; 
 int LOBBUFSIZE ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16(Archive *fout, void *arg)
{
	const char *blobQry;
	const char *blobFetchQry;
	PGconn	   *conn = FUNC3(fout);
	PGresult   *res;
	char		buf[LOBBUFSIZE];
	int			ntups;
	int			i;
	int			cnt;

	FUNC15("saving large objects");

	/*
	 * Currently, we re-fetch all BLOB OIDs using a cursor.  Consider scanning
	 * the already-in-memory dumpable objects instead...
	 */
	if (fout->remoteVersion >= 90000)
		blobQry =
			"DECLARE bloboid CURSOR FOR "
			"SELECT oid FROM pg_largeobject_metadata ORDER BY 1";
	else
		blobQry =
			"DECLARE bloboid CURSOR FOR "
			"SELECT DISTINCT loid FROM pg_largeobject ORDER BY 1";

	FUNC2(fout, blobQry);

	/* Command to fetch from cursor */
	blobFetchQry = "FETCH 1000 IN bloboid";

	do
	{
		/* Do a fetch */
		res = FUNC1(fout, blobFetchQry, PGRES_TUPLES_OK);

		/* Process the tuples, if any */
		ntups = FUNC7(res);
		for (i = 0; i < ntups; i++)
		{
			Oid			blobOid;
			int			loFd;

			blobOid = FUNC10(FUNC6(res, i, 0));
			/* Open the BLOB */
			loFd = FUNC13(conn, blobOid, INV_READ);
			if (loFd == -1)
				FUNC11("could not open large object %u: %s",
					  blobOid, FUNC5(conn));

			FUNC8(fout, blobOid);

			/* Now read it in chunks, sending data to archive */
			do
			{
				cnt = FUNC14(conn, loFd, buf, LOBBUFSIZE);
				if (cnt < 0)
					FUNC11("error reading large object %u: %s",
						  blobOid, FUNC5(conn));

				FUNC9(fout, buf, cnt);
			} while (cnt > 0);

			FUNC12(conn, loFd);

			FUNC0(fout, blobOid);
		}

		FUNC4(res);
	} while (ntups > 0);

	return 1;
}