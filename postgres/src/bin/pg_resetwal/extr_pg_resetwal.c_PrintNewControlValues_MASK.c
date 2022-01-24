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
struct TYPE_3__ {int nextMulti; int oldestMulti; int oldestMultiDB; int nextMultiOffset; int nextOid; int oldestXid; int oldestXidDB; int oldestCommitTsXid; int newestCommitTsXid; int /*<<< orphan*/  nextFullXid; int /*<<< orphan*/  ThisTimeLineID; } ;
struct TYPE_4__ {int xlog_seg_size; TYPE_1__ checkPointCopy; } ;

/* Variables and functions */
 TYPE_2__ ControlFile ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  WalSegSz ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  newXlogSegNo ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ set_mxid ; 
 int set_mxoff ; 
 scalar_t__ set_newest_commit_ts_xid ; 
 scalar_t__ set_oid ; 
 scalar_t__ set_oldest_commit_ts_xid ; 
 scalar_t__ set_wal_segsize ; 
 scalar_t__ set_xid ; 
 int set_xid_epoch ; 

__attribute__((used)) static void
FUNC5(void)
{
	char		fname[MAXFNAMELEN];

	/* This will be always printed in order to keep format same. */
	FUNC4(FUNC3("\n\nValues to be changed:\n\n"));

	FUNC1(fname, ControlFile.checkPointCopy.ThisTimeLineID,
				 newXlogSegNo, WalSegSz);
	FUNC4(FUNC3("First log segment after reset:        %s\n"), fname);

	if (set_mxid != 0)
	{
		FUNC4(FUNC3("NextMultiXactId:                      %u\n"),
			   ControlFile.checkPointCopy.nextMulti);
		FUNC4(FUNC3("OldestMultiXid:                       %u\n"),
			   ControlFile.checkPointCopy.oldestMulti);
		FUNC4(FUNC3("OldestMulti's DB:                     %u\n"),
			   ControlFile.checkPointCopy.oldestMultiDB);
	}

	if (set_mxoff != -1)
	{
		FUNC4(FUNC3("NextMultiOffset:                      %u\n"),
			   ControlFile.checkPointCopy.nextMultiOffset);
	}

	if (set_oid != 0)
	{
		FUNC4(FUNC3("NextOID:                              %u\n"),
			   ControlFile.checkPointCopy.nextOid);
	}

	if (set_xid != 0)
	{
		FUNC4(FUNC3("NextXID:                              %u\n"),
			   FUNC2(ControlFile.checkPointCopy.nextFullXid));
		FUNC4(FUNC3("OldestXID:                            %u\n"),
			   ControlFile.checkPointCopy.oldestXid);
		FUNC4(FUNC3("OldestXID's DB:                       %u\n"),
			   ControlFile.checkPointCopy.oldestXidDB);
	}

	if (set_xid_epoch != -1)
	{
		FUNC4(FUNC3("NextXID epoch:                        %u\n"),
			   FUNC0(ControlFile.checkPointCopy.nextFullXid));
	}

	if (set_oldest_commit_ts_xid != 0)
	{
		FUNC4(FUNC3("oldestCommitTsXid:                    %u\n"),
			   ControlFile.checkPointCopy.oldestCommitTsXid);
	}
	if (set_newest_commit_ts_xid != 0)
	{
		FUNC4(FUNC3("newestCommitTsXid:                    %u\n"),
			   ControlFile.checkPointCopy.newestCommitTsXid);
	}

	if (set_wal_segsize != 0)
	{
		FUNC4(FUNC3("Bytes per WAL segment:                %u\n"),
			   ControlFile.xlog_seg_size);
	}
}