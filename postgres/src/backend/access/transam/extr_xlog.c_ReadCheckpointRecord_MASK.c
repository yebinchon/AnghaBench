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
typedef  int uint8 ;
struct TYPE_4__ {scalar_t__ xl_rmid; int xl_info; scalar_t__ xl_tot_len; } ;
typedef  TYPE_1__ XLogRecord ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  CheckPoint ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 scalar_t__ RM_XLOG_ID ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SizeOfXLogRecord ; 
 scalar_t__ SizeOfXLogRecordDataHeaderShort ; 
 int XLOG_CHECKPOINT_ONLINE ; 
 int XLOG_CHECKPOINT_SHUTDOWN ; 
 int XLR_INFO_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static XLogRecord *
FUNC4(XLogReaderState *xlogreader, XLogRecPtr RecPtr,
					 int whichChkpt, bool report)
{
	XLogRecord *record;
	uint8		info;

	if (!FUNC1(RecPtr))
	{
		if (!report)
			return NULL;

		switch (whichChkpt)
		{
			case 1:
				FUNC2(LOG,
						(FUNC3("invalid primary checkpoint link in control file")));
				break;
			default:
				FUNC2(LOG,
						(FUNC3("invalid checkpoint link in backup_label file")));
				break;
		}
		return NULL;
	}

	record = FUNC0(xlogreader, RecPtr, LOG, true);

	if (record == NULL)
	{
		if (!report)
			return NULL;

		switch (whichChkpt)
		{
			case 1:
				FUNC2(LOG,
						(FUNC3("invalid primary checkpoint record")));
				break;
			default:
				FUNC2(LOG,
						(FUNC3("invalid checkpoint record")));
				break;
		}
		return NULL;
	}
	if (record->xl_rmid != RM_XLOG_ID)
	{
		switch (whichChkpt)
		{
			case 1:
				FUNC2(LOG,
						(FUNC3("invalid resource manager ID in primary checkpoint record")));
				break;
			default:
				FUNC2(LOG,
						(FUNC3("invalid resource manager ID in checkpoint record")));
				break;
		}
		return NULL;
	}
	info = record->xl_info & ~XLR_INFO_MASK;
	if (info != XLOG_CHECKPOINT_SHUTDOWN &&
		info != XLOG_CHECKPOINT_ONLINE)
	{
		switch (whichChkpt)
		{
			case 1:
				FUNC2(LOG,
						(FUNC3("invalid xl_info in primary checkpoint record")));
				break;
			default:
				FUNC2(LOG,
						(FUNC3("invalid xl_info in checkpoint record")));
				break;
		}
		return NULL;
	}
	if (record->xl_tot_len != SizeOfXLogRecord + SizeOfXLogRecordDataHeaderShort + sizeof(CheckPoint))
	{
		switch (whichChkpt)
		{
			case 1:
				FUNC2(LOG,
						(FUNC3("invalid length of primary checkpoint record")));
				break;
			default:
				FUNC2(LOG,
						(FUNC3("invalid length of checkpoint record")));
				break;
		}
		return NULL;
	}
	return record;
}