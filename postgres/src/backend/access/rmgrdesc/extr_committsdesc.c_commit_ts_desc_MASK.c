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
struct TYPE_3__ {int /*<<< orphan*/  oldestXid; int /*<<< orphan*/  pageno; } ;
typedef  TYPE_1__ xl_commit_ts_truncate ;
struct TYPE_4__ {int /*<<< orphan*/  mainxid; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_2__ xl_commit_ts_set ;
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int TransactionId ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 scalar_t__ COMMIT_TS_SETTS ; 
 scalar_t__ COMMIT_TS_TRUNCATE ; 
 scalar_t__ COMMIT_TS_ZEROPAGE ; 
 int SizeOfCommitTsSet ; 
 scalar_t__ XLR_INFO_MASK ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int*,char*,int) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(StringInfo buf, XLogReaderState *record)
{
	char	   *rec = FUNC0(record);
	uint8		info = FUNC2(record) & ~XLR_INFO_MASK;

	if (info == COMMIT_TS_ZEROPAGE)
	{
		int			pageno;

		FUNC4(&pageno, rec, sizeof(int));
		FUNC3(buf, "%d", pageno);
	}
	else if (info == COMMIT_TS_TRUNCATE)
	{
		xl_commit_ts_truncate *trunc = (xl_commit_ts_truncate *) rec;

		FUNC3(buf, "pageno %d, oldestXid %u",
						 trunc->pageno, trunc->oldestXid);
	}
	else if (info == COMMIT_TS_SETTS)
	{
		xl_commit_ts_set *xlrec = (xl_commit_ts_set *) rec;
		int			nsubxids;

		FUNC3(buf, "set %s/%d for: %u",
						 FUNC7(xlrec->timestamp),
						 xlrec->nodeid,
						 xlrec->mainxid);
		nsubxids = ((FUNC1(record) - SizeOfCommitTsSet) /
					sizeof(TransactionId));
		if (nsubxids > 0)
		{
			int			i;
			TransactionId *subxids;

			subxids = FUNC5(sizeof(TransactionId) * nsubxids);
			FUNC4(subxids,
				   FUNC0(record) + SizeOfCommitTsSet,
				   sizeof(TransactionId) * nsubxids);
			for (i = 0; i < nsubxids; i++)
				FUNC3(buf, ", %u", subxids[i]);
			FUNC6(subxids);
		}
	}
}