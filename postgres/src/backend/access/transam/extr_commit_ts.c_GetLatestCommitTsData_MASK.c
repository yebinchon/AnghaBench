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
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_3__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  time; } ;
struct TYPE_4__ {TYPE_1__ dataLastCommit; int /*<<< orphan*/  xidLastCommit; int /*<<< orphan*/  commitTsActive; } ;
typedef  int /*<<< orphan*/  RepOriginId ;

/* Variables and functions */
 int /*<<< orphan*/  CommitTsLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 TYPE_2__* commitTsShared ; 
 int /*<<< orphan*/  FUNC2 () ; 

TransactionId
FUNC3(TimestampTz *ts, RepOriginId *nodeid)
{
	TransactionId xid;

	FUNC0(CommitTsLock, LW_SHARED);

	/* Error if module not enabled */
	if (!commitTsShared->commitTsActive)
		FUNC2();

	xid = commitTsShared->xidLastCommit;
	if (ts)
		*ts = commitTsShared->dataLastCommit.time;
	if (nodeid)
		*nodeid = commitTsShared->dataLastCommit.nodeid;
	FUNC1(CommitTsLock);

	return xid;
}