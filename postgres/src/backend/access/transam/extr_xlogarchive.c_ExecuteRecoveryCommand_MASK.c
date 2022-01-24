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
typedef  int /*<<< orphan*/  XLogSegNo ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TimeLineID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG3 ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  wal_segment_size ; 

void
FUNC12(const char *command, const char *commandName, bool failOnSignal)
{
	char		xlogRecoveryCmd[MAXPGPATH];
	char		lastRestartPointFname[MAXPGPATH];
	char	   *dp;
	char	   *endp;
	const char *sp;
	int			rc;
	XLogSegNo	restartSegNo;
	XLogRecPtr	restartRedoPtr;
	TimeLineID	restartTli;

	FUNC0(command && commandName);

	/*
	 * Calculate the archive file cutoff point for use during log shipping
	 * replication. All files earlier than this point can be deleted from the
	 * archive, though there is no requirement to do so.
	 */
	FUNC1(&restartRedoPtr, &restartTli);
	FUNC3(restartRedoPtr, restartSegNo, wal_segment_size);
	FUNC4(lastRestartPointFname, restartTli, restartSegNo,
				 wal_segment_size);

	/*
	 * construct the command to be executed
	 */
	dp = xlogRecoveryCmd;
	endp = xlogRecoveryCmd + MAXPGPATH - 1;
	*endp = '\0';

	for (sp = command; *sp; sp++)
	{
		if (*sp == '%')
		{
			switch (sp[1])
			{
				case 'r':
					/* %r: filename of last restartpoint */
					sp++;
					FUNC2(dp, lastRestartPointFname, endp - dp);
					dp += FUNC8(dp);
					break;
				case '%':
					/* convert %% to a single % */
					sp++;
					if (dp < endp)
						*dp++ = *sp;
					break;
				default:
					/* otherwise treat the % as not special */
					if (dp < endp)
						*dp++ = *sp;
					break;
			}
		}
		else
		{
			if (dp < endp)
				*dp++ = *sp;
		}
	}
	*dp = '\0';

	FUNC5(DEBUG3,
			(FUNC7("executing %s \"%s\"", commandName, command)));

	/*
	 * execute the constructed command
	 */
	rc = FUNC9(xlogRecoveryCmd);
	if (rc != 0)
	{
		/*
		 * If the failure was due to any sort of signal, it's best to punt and
		 * abort recovery.  See comments in RestoreArchivedFile().
		 */
		FUNC5((failOnSignal && FUNC10(rc, true)) ? FATAL : WARNING,
		/*------
		   translator: First %s represents a postgresql.conf parameter name like
		  "recovery_end_command", the 2nd is the value of that parameter, the
		  third an already translated error message. */
				(FUNC6("%s \"%s\": %s", commandName,
						command, FUNC11(rc))));
	}
}