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
typedef  int uint64 ;
typedef  int uint32 ;
typedef  int XLogRecPtr ;
typedef  char TimeLineID ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  BACKUP_LABEL_FILE ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int MAXFNAMELEN ; 
 int MAXPGPATH ; 
 int RedoStartLSN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static bool
FUNC10(XLogRecPtr *checkPointLoc, bool *backupEndRequired,
				  bool *backupFromStandby)
{
	char		startxlogfilename[MAXFNAMELEN];
	TimeLineID	tli_from_walseg,
				tli_from_file;
	FILE	   *lfp;
	char		ch;
	char		backuptype[20];
	char		backupfrom[20];
	char		backuplabel[MAXPGPATH];
	char		backuptime[128];
	uint32		hi,
				lo;

	*backupEndRequired = false;
	*backupFromStandby = false;

	/*
	 * See if label file is present
	 */
	lfp = FUNC0(BACKUP_LABEL_FILE, "r");
	if (!lfp)
	{
		if (errno != ENOENT)
			FUNC2(FATAL,
					(FUNC4(),
					 FUNC6("could not read file \"%s\": %m",
							BACKUP_LABEL_FILE)));
		return false;			/* it's not there, all is fine */
	}

	/*
	 * Read and parse the START WAL LOCATION and CHECKPOINT lines (this code
	 * is pretty crude, but we are not expecting any variability in the file
	 * format).
	 */
	if (FUNC8(lfp, "START WAL LOCATION: %X/%X (file %08X%16s)%c",
			   &hi, &lo, &tli_from_walseg, startxlogfilename, &ch) != 5 || ch != '\n')
		FUNC2(FATAL,
				(FUNC3(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC6("invalid data in file \"%s\"", BACKUP_LABEL_FILE)));
	RedoStartLSN = ((uint64) hi) << 32 | lo;
	if (FUNC8(lfp, "CHECKPOINT LOCATION: %X/%X%c",
			   &hi, &lo, &ch) != 3 || ch != '\n')
		FUNC2(FATAL,
				(FUNC3(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC6("invalid data in file \"%s\"", BACKUP_LABEL_FILE)));
	*checkPointLoc = ((uint64) hi) << 32 | lo;

	/*
	 * BACKUP METHOD and BACKUP FROM lines are new in 9.2. We can't restore
	 * from an older backup anyway, but since the information on it is not
	 * strictly required, don't error out if it's missing for some reason.
	 */
	if (FUNC8(lfp, "BACKUP METHOD: %19s\n", backuptype) == 1)
	{
		if (FUNC9(backuptype, "streamed") == 0)
			*backupEndRequired = true;
	}

	if (FUNC8(lfp, "BACKUP FROM: %19s\n", backupfrom) == 1)
	{
		if (FUNC9(backupfrom, "standby") == 0)
			*backupFromStandby = true;
	}

	/*
	 * Parse START TIME and LABEL. Those are not mandatory fields for recovery
	 * but checking for their presence is useful for debugging and the next
	 * sanity checks. Cope also with the fact that the result buffers have a
	 * pre-allocated size, hence if the backup_label file has been generated
	 * with strings longer than the maximum assumed here an incorrect parsing
	 * happens. That's fine as only minor consistency checks are done
	 * afterwards.
	 */
	if (FUNC8(lfp, "START TIME: %127[^\n]\n", backuptime) == 1)
		FUNC2(DEBUG1,
				(FUNC6("backup time %s in file \"%s\"",
						backuptime, BACKUP_LABEL_FILE)));

	if (FUNC8(lfp, "LABEL: %1023[^\n]\n", backuplabel) == 1)
		FUNC2(DEBUG1,
				(FUNC6("backup label %s in file \"%s\"",
						backuplabel, BACKUP_LABEL_FILE)));

	/*
	 * START TIMELINE is new as of 11. Its parsing is not mandatory, still use
	 * it as a sanity check if present.
	 */
	if (FUNC8(lfp, "START TIMELINE: %u\n", &tli_from_file) == 1)
	{
		if (tli_from_walseg != tli_from_file)
			FUNC2(FATAL,
					(FUNC3(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC6("invalid data in file \"%s\"", BACKUP_LABEL_FILE),
					 FUNC5("Timeline ID parsed is %u, but expected %u.",
							   tli_from_file, tli_from_walseg)));

		FUNC2(DEBUG1,
				(FUNC6("backup timeline %u in file \"%s\"",
						tli_from_file, BACKUP_LABEL_FILE)));
	}

	if (FUNC7(lfp) || FUNC1(lfp))
		FUNC2(FATAL,
				(FUNC4(),
				 FUNC6("could not read file \"%s\": %m",
						BACKUP_LABEL_FILE)));

	return true;
}