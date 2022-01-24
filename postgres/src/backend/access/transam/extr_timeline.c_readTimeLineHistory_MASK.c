#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  fline ;
typedef  void* XLogRecPtr ;
typedef  int TimeLineID ;
struct TYPE_4__ {int tli; int begin; int end; } ;
typedef  TYPE_1__ TimeLineHistoryEntry ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 scalar_t__ ArchiveRecoveryRequested ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int MAXFNAMELEN ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/ * NIL ; 
 int FUNC3 (char*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (char*,char*,int*,scalar_t__*,scalar_t__*) ; 

List *
FUNC16(TimeLineID targetTLI)
{
	List	   *result;
	char		path[MAXPGPATH];
	char		histfname[MAXFNAMELEN];
	char		fline[MAXPGPATH];
	FILE	   *fd;
	TimeLineHistoryEntry *entry;
	TimeLineID	lasttli = 0;
	XLogRecPtr	prevend;
	bool		fromArchive = false;

	/* Timeline 1 does not have a history file, so no need to check */
	if (targetTLI == 1)
	{
		entry = (TimeLineHistoryEntry *) FUNC14(sizeof(TimeLineHistoryEntry));
		entry->tli = targetTLI;
		entry->begin = entry->end = InvalidXLogRecPtr;
		return FUNC13(entry);
	}

	if (ArchiveRecoveryRequested)
	{
		FUNC4(histfname, targetTLI);
		fromArchive =
			FUNC3(path, histfname, "RECOVERYHISTORY", 0, false);
	}
	else
		FUNC5(path, targetTLI);

	fd = FUNC0(path, "r");
	if (fd == NULL)
	{
		if (errno != ENOENT)
			FUNC6(FATAL,
					(FUNC7(),
					 FUNC9("could not open file \"%s\": %m", path)));
		/* Not there, so assume no parents */
		entry = (TimeLineHistoryEntry *) FUNC14(sizeof(TimeLineHistoryEntry));
		entry->tli = targetTLI;
		entry->begin = entry->end = InvalidXLogRecPtr;
		return FUNC13(entry);
	}

	result = NIL;

	/*
	 * Parse the file...
	 */
	prevend = InvalidXLogRecPtr;
	while (FUNC10(fline, sizeof(fline), fd) != NULL)
	{
		/* skip leading whitespace and check for # comment */
		char	   *ptr;
		TimeLineID	tli;
		uint32		switchpoint_hi;
		uint32		switchpoint_lo;
		int			nfields;

		for (ptr = fline; *ptr; ptr++)
		{
			if (!FUNC11((unsigned char) *ptr))
				break;
		}
		if (*ptr == '\0' || *ptr == '#')
			continue;

		nfields = FUNC15(fline, "%u\t%X/%X", &tli, &switchpoint_hi, &switchpoint_lo);

		if (nfields < 1)
		{
			/* expect a numeric timeline ID as first field of line */
			FUNC6(FATAL,
					(FUNC9("syntax error in history file: %s", fline),
					 FUNC8("Expected a numeric timeline ID.")));
		}
		if (nfields != 3)
			FUNC6(FATAL,
					(FUNC9("syntax error in history file: %s", fline),
					 FUNC8("Expected a write-ahead log switchpoint location.")));

		if (result && tli <= lasttli)
			FUNC6(FATAL,
					(FUNC9("invalid data in history file: %s", fline),
					 FUNC8("Timeline IDs must be in increasing sequence.")));

		lasttli = tli;

		entry = (TimeLineHistoryEntry *) FUNC14(sizeof(TimeLineHistoryEntry));
		entry->tli = tli;
		entry->begin = prevend;
		entry->end = ((uint64) (switchpoint_hi)) << 32 | (uint64) switchpoint_lo;
		prevend = entry->end;

		/* Build list with newest item first */
		result = FUNC12(entry, result);

		/* we ignore the remainder of each line */
	}

	FUNC1(fd);

	if (result && targetTLI <= lasttli)
		FUNC6(FATAL,
				(FUNC9("invalid data in history file \"%s\"", path),
				 FUNC8("Timeline IDs must be less than child timeline's ID.")));

	/*
	 * Create one more entry for the "tip" of the timeline, which has no entry
	 * in the history file.
	 */
	entry = (TimeLineHistoryEntry *) FUNC14(sizeof(TimeLineHistoryEntry));
	entry->tli = targetTLI;
	entry->begin = prevend;
	entry->end = InvalidXLogRecPtr;

	result = FUNC12(entry, result);

	/*
	 * If the history file was fetched from archive, save it in pg_wal for
	 * future reference.
	 */
	if (fromArchive)
		FUNC2(path, histfname);

	return result;
}