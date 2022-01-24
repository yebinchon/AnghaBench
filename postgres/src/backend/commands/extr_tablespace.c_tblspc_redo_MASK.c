#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ts_id; } ;
typedef  TYPE_1__ xl_tblspc_drop_rec ;
struct TYPE_4__ {char* ts_path; int /*<<< orphan*/  ts_id; } ;
typedef  TYPE_2__ xl_tblspc_create_rec ;
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  XLogReaderState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ XLOG_TBLSPC_CREATE ; 
 scalar_t__ XLOG_TBLSPC_DROP ; 
 scalar_t__ XLR_INFO_MASK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

void
FUNC12(XLogReaderState *record)
{
	uint8		info = FUNC3(record) & ~XLR_INFO_MASK;

	/* Backup blocks are not used in tblspc records */
	FUNC0(!FUNC4(record));

	if (info == XLOG_TBLSPC_CREATE)
	{
		xl_tblspc_create_rec *xlrec = (xl_tblspc_create_rec *) FUNC2(record);
		char	   *location = xlrec->ts_path;

		FUNC5(location, xlrec->ts_id);
	}
	else if (info == XLOG_TBLSPC_DROP)
	{
		xl_tblspc_drop_rec *xlrec = (xl_tblspc_drop_rec *) FUNC2(record);

		/*
		 * If we issued a WAL record for a drop tablespace it implies that
		 * there were no files in it at all when the DROP was done. That means
		 * that no permanent objects can exist in it at this point.
		 *
		 * It is possible for standby users to be using this tablespace as a
		 * location for their temporary files, so if we fail to remove all
		 * files then do conflict processing and try again, if currently
		 * enabled.
		 *
		 * Other possible reasons for failure include bollixed file
		 * permissions on a standby server when they were okay on the primary,
		 * etc etc. There's not much we can do about that, so just remove what
		 * we can and press on.
		 */
		if (!FUNC6(xlrec->ts_id, true))
		{
			FUNC1(xlrec->ts_id);

			/*
			 * If we did recovery processing then hopefully the backends who
			 * wrote temp files should have cleaned up and exited by now.  So
			 * retry before complaining.  If we fail again, this is just a LOG
			 * condition, because it's not worth throwing an ERROR for (as
			 * that would crash the database and require manual intervention
			 * before we could get past this WAL record on restart).
			 */
			if (!FUNC6(xlrec->ts_id, true))
				FUNC8(LOG,
						(FUNC9(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						 FUNC11("directories for tablespace %u could not be removed",
								xlrec->ts_id),
						 FUNC10("You can remove the directories manually if necessary.")));
		}
	}
	else
		FUNC7(PANIC, "tblspc_redo: unknown op code %u", info);
}