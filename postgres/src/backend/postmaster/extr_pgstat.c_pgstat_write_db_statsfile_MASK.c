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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  format_id ;
struct TYPE_3__ {int /*<<< orphan*/  functions; int /*<<< orphan*/  tables; int /*<<< orphan*/  databaseid; } ;
typedef  int /*<<< orphan*/  PgStat_StatTabEntry ;
typedef  int /*<<< orphan*/  PgStat_StatFuncEntry ;
typedef  TYPE_1__ PgStat_StatDBEntry ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  PGSTAT_FILE_FORMAT_ID ; 
 int /*<<< orphan*/  PG_BINARY_W ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void
FUNC14(PgStat_StatDBEntry *dbentry, bool permanent)
{
	HASH_SEQ_STATUS tstat;
	HASH_SEQ_STATUS fstat;
	PgStat_StatTabEntry *tabentry;
	PgStat_StatFuncEntry *funcentry;
	FILE	   *fpout;
	int32		format_id;
	Oid			dbid = dbentry->databaseid;
	int			rc;
	char		tmpfile[MAXPGPATH];
	char		statfile[MAXPGPATH];

	FUNC9(permanent, true, dbid, tmpfile, MAXPGPATH);
	FUNC9(permanent, false, dbid, statfile, MAXPGPATH);

	FUNC2(DEBUG2, "writing stats file \"%s\"", statfile);

	/*
	 * Open the statistics temp file to write out the current values.
	 */
	fpout = FUNC0(tmpfile, PG_BINARY_W);
	if (fpout == NULL)
	{
		FUNC3(LOG,
				(FUNC4(),
				 FUNC5("could not open temporary statistics file \"%s\": %m",
						tmpfile)));
		return;
	}

	/*
	 * Write the file header --- currently just a format ID.
	 */
	format_id = PGSTAT_FILE_FORMAT_ID;
	rc = FUNC8(&format_id, sizeof(format_id), 1, fpout);
	(void) rc;					/* we'll check for error with ferror */

	/*
	 * Walk through the database's access stats per table.
	 */
	FUNC10(&tstat, dbentry->tables);
	while ((tabentry = (PgStat_StatTabEntry *) FUNC11(&tstat)) != NULL)
	{
		FUNC7('T', fpout);
		rc = FUNC8(tabentry, sizeof(PgStat_StatTabEntry), 1, fpout);
		(void) rc;				/* we'll check for error with ferror */
	}

	/*
	 * Walk through the database's function stats table.
	 */
	FUNC10(&fstat, dbentry->functions);
	while ((funcentry = (PgStat_StatFuncEntry *) FUNC11(&fstat)) != NULL)
	{
		FUNC7('F', fpout);
		rc = FUNC8(funcentry, sizeof(PgStat_StatFuncEntry), 1, fpout);
		(void) rc;				/* we'll check for error with ferror */
	}

	/*
	 * No more output to be done. Close the temp file and replace the old
	 * pgstat.stat with it.  The ferror() check replaces testing for error
	 * after each individual fputc or fwrite above.
	 */
	FUNC7('E', fpout);

	if (FUNC6(fpout))
	{
		FUNC3(LOG,
				(FUNC4(),
				 FUNC5("could not write temporary statistics file \"%s\": %m",
						tmpfile)));
		FUNC1(fpout);
		FUNC13(tmpfile);
	}
	else if (FUNC1(fpout) < 0)
	{
		FUNC3(LOG,
				(FUNC4(),
				 FUNC5("could not close temporary statistics file \"%s\": %m",
						tmpfile)));
		FUNC13(tmpfile);
	}
	else if (FUNC12(tmpfile, statfile) < 0)
	{
		FUNC3(LOG,
				(FUNC4(),
				 FUNC5("could not rename temporary statistics file \"%s\" to \"%s\": %m",
						tmpfile, statfile)));
		FUNC13(tmpfile);
	}

	if (permanent)
	{
		FUNC9(false, false, dbid, statfile, MAXPGPATH);

		FUNC2(DEBUG2, "removing temporary stats file \"%s\"", statfile);
		FUNC13(statfile);
	}
}