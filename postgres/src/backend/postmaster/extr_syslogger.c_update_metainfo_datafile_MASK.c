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
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG ; 
 int LOG_DESTINATION_CSVLOG ; 
 int LOG_DESTINATION_STDERR ; 
 int /*<<< orphan*/  LOG_METAINFO_DATAFILE ; 
 int /*<<< orphan*/  LOG_METAINFO_DATAFILE_TMP ; 
 int Log_destination ; 
 int /*<<< orphan*/  PG_IOLBF ; 
 int /*<<< orphan*/  _O_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 char* last_csv_file_name ; 
 char* last_file_name ; 
 int /*<<< orphan*/  pg_mode_mask ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void)
{
	FILE	   *fh;
	mode_t		oumask;

	if (!(Log_destination & LOG_DESTINATION_STDERR) &&
		!(Log_destination & LOG_DESTINATION_CSVLOG))
	{
		if (FUNC11(LOG_METAINFO_DATAFILE) < 0 && errno != ENOENT)
			FUNC2(LOG,
					(FUNC3(),
					 FUNC4("could not remove file \"%s\": %m",
							LOG_METAINFO_DATAFILE)));
		return;
	}

	/* use the same permissions as the data directory for the new file */
	oumask = FUNC10(pg_mode_mask);
	fh = FUNC6(LOG_METAINFO_DATAFILE_TMP, "w");
	FUNC10(oumask);

	if (fh)
	{
		FUNC9(fh, NULL, PG_IOLBF, 0);

#ifdef WIN32
		/* use CRLF line endings on Windows */
		_setmode(_fileno(fh), _O_TEXT);
#endif
	}
	else
	{
		FUNC2(LOG,
				(FUNC3(),
				 FUNC4("could not open file \"%s\": %m",
						LOG_METAINFO_DATAFILE_TMP)));
		return;
	}

	if (last_file_name && (Log_destination & LOG_DESTINATION_STDERR))
	{
		if (FUNC7(fh, "stderr %s\n", last_file_name) < 0)
		{
			FUNC2(LOG,
					(FUNC3(),
					 FUNC4("could not write file \"%s\": %m",
							LOG_METAINFO_DATAFILE_TMP)));
			FUNC5(fh);
			return;
		}
	}

	if (last_csv_file_name && (Log_destination & LOG_DESTINATION_CSVLOG))
	{
		if (FUNC7(fh, "csvlog %s\n", last_csv_file_name) < 0)
		{
			FUNC2(LOG,
					(FUNC3(),
					 FUNC4("could not write file \"%s\": %m",
							LOG_METAINFO_DATAFILE_TMP)));
			FUNC5(fh);
			return;
		}
	}
	FUNC5(fh);

	if (FUNC8(LOG_METAINFO_DATAFILE_TMP, LOG_METAINFO_DATAFILE) != 0)
		FUNC2(LOG,
				(FUNC3(),
				 FUNC4("could not rename file \"%s\" to \"%s\": %m",
						LOG_METAINFO_DATAFILE_TMP, LOG_METAINFO_DATAFILE)));
}