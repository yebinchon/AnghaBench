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
typedef  int /*<<< orphan*/  pg_time_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 int /*<<< orphan*/  LOG ; 
 int LOG_DESTINATION_CSVLOG ; 
 int LOG_DESTINATION_STDERR ; 
 int Log_destination ; 
 scalar_t__ Log_truncate_on_rotation ; 
 int /*<<< orphan*/ * csvlogFile ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* last_csv_file_name ; 
 char* last_file_name ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  next_rotation_time ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int rotation_disabled ; 
 int rotation_requested ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/ * syslogFile ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10(bool time_based_rotation, int size_rotation_for)
{
	char	   *filename;
	char	   *csvfilename = NULL;
	pg_time_t	fntime;
	FILE	   *fh;

	rotation_requested = false;

	/*
	 * When doing a time-based rotation, invent the new logfile name based on
	 * the planned rotation time, not current time, to avoid "slippage" in the
	 * file name when we don't do the rotation immediately.
	 */
	if (time_based_rotation)
		fntime = next_rotation_time;
	else
		fntime = FUNC8(NULL);
	filename = FUNC3(fntime, NULL);
	if (Log_destination & LOG_DESTINATION_CSVLOG)
		csvfilename = FUNC3(fntime, ".csv");

	/*
	 * Decide whether to overwrite or append.  We can overwrite if (a)
	 * Log_truncate_on_rotation is set, (b) the rotation was triggered by
	 * elapsed time and not something else, and (c) the computed file name is
	 * different from what we were previously logging into.
	 *
	 * Note: last_file_name should never be NULL here, but if it is, append.
	 */
	if (time_based_rotation || (size_rotation_for & LOG_DESTINATION_STDERR))
	{
		if (Log_truncate_on_rotation && time_based_rotation &&
			last_file_name != NULL &&
			FUNC7(filename, last_file_name) != 0)
			fh = FUNC4(filename, "w", true);
		else
			fh = FUNC4(filename, "a", true);

		if (!fh)
		{
			/*
			 * ENFILE/EMFILE are not too surprising on a busy system; just
			 * keep using the old file till we manage to get a new one.
			 * Otherwise, assume something's wrong with Log_directory and stop
			 * trying to create files.
			 */
			if (errno != ENFILE && errno != EMFILE)
			{
				FUNC0(LOG,
						(FUNC1("disabling automatic rotation (use SIGHUP to re-enable)")));
				rotation_disabled = true;
			}

			if (filename)
				FUNC5(filename);
			if (csvfilename)
				FUNC5(csvfilename);
			return;
		}

		FUNC2(syslogFile);
		syslogFile = fh;

		/* instead of pfree'ing filename, remember it for next time */
		if (last_file_name != NULL)
			FUNC5(last_file_name);
		last_file_name = filename;
		filename = NULL;
	}

	/*
	 * Same as above, but for csv file.  Note that if LOG_DESTINATION_CSVLOG
	 * was just turned on, we might have to open csvlogFile here though it was
	 * not open before.  In such a case we'll append not overwrite (since
	 * last_csv_file_name will be NULL); that is consistent with the normal
	 * rules since it's not a time-based rotation.
	 */
	if ((Log_destination & LOG_DESTINATION_CSVLOG) &&
		(csvlogFile == NULL ||
		 time_based_rotation || (size_rotation_for & LOG_DESTINATION_CSVLOG)))
	{
		if (Log_truncate_on_rotation && time_based_rotation &&
			last_csv_file_name != NULL &&
			FUNC7(csvfilename, last_csv_file_name) != 0)
			fh = FUNC4(csvfilename, "w", true);
		else
			fh = FUNC4(csvfilename, "a", true);

		if (!fh)
		{
			/*
			 * ENFILE/EMFILE are not too surprising on a busy system; just
			 * keep using the old file till we manage to get a new one.
			 * Otherwise, assume something's wrong with Log_directory and stop
			 * trying to create files.
			 */
			if (errno != ENFILE && errno != EMFILE)
			{
				FUNC0(LOG,
						(FUNC1("disabling automatic rotation (use SIGHUP to re-enable)")));
				rotation_disabled = true;
			}

			if (filename)
				FUNC5(filename);
			if (csvfilename)
				FUNC5(csvfilename);
			return;
		}

		if (csvlogFile != NULL)
			FUNC2(csvlogFile);
		csvlogFile = fh;

		/* instead of pfree'ing filename, remember it for next time */
		if (last_csv_file_name != NULL)
			FUNC5(last_csv_file_name);
		last_csv_file_name = csvfilename;
		csvfilename = NULL;
	}
	else if (!(Log_destination & LOG_DESTINATION_CSVLOG) &&
			 csvlogFile != NULL)
	{
		/* CSVLOG was just turned off, so close the old file */
		FUNC2(csvlogFile);
		csvlogFile = NULL;
		if (last_csv_file_name != NULL)
			FUNC5(last_csv_file_name);
		last_csv_file_name = NULL;
	}

	if (filename)
		FUNC5(filename);
	if (csvfilename)
		FUNC5(csvfilename);

	FUNC9();

	FUNC6();
}