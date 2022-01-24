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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  strfbuf ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  XLogSegNo ;
typedef  int XLogRecPtr ;
typedef  int /*<<< orphan*/  TimeLineID ;

/* Variables and functions */
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  WalSegSz ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tm* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,int,char*,int,int,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(XLogRecPtr startpoint, TimeLineID starttli, XLogRecPtr checkpointloc)
{
	XLogSegNo	startsegno;
	time_t		stamp_time;
	char		strfbuf[128];
	char		xlogfilename[MAXFNAMELEN];
	struct tm  *tmp;
	char		buf[1000];
	int			len;

	FUNC0(startpoint, startsegno, WalSegSz);
	FUNC1(xlogfilename, starttli, startsegno, WalSegSz);

	/*
	 * Construct backup label file
	 */
	stamp_time = FUNC8(NULL);
	tmp = FUNC3(&stamp_time);
	FUNC7(strfbuf, sizeof(strfbuf), "%Y-%m-%d %H:%M:%S %Z", tmp);

	len = FUNC6(buf, sizeof(buf),
				   "START WAL LOCATION: %X/%X (file %s)\n"
				   "CHECKPOINT LOCATION: %X/%X\n"
				   "BACKUP METHOD: pg_rewind\n"
				   "BACKUP FROM: standby\n"
				   "START TIME: %s\n",
	/* omit LABEL: line */
				   (uint32) (startpoint >> 32), (uint32) startpoint, xlogfilename,
				   (uint32) (checkpointloc >> 32), (uint32) checkpointloc,
				   strfbuf);
	if (len >= sizeof(buf))
		FUNC5("backup label buffer too small");	/* shouldn't happen */

	/* TODO: move old file out of the way, if any. */
	FUNC4("backup_label", true); /* BACKUP_LABEL_FILE */
	FUNC9(buf, 0, len);
	FUNC2();
}