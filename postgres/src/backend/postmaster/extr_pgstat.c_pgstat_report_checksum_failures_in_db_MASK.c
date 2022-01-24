#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg ;
struct TYPE_3__ {int m_failurecount; int /*<<< orphan*/  m_failure_time; int /*<<< orphan*/  m_databaseid; int /*<<< orphan*/  m_hdr; } ;
typedef  TYPE_1__ PgStat_MsgChecksumFailure ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int /*<<< orphan*/  PGSTAT_MTYPE_CHECKSUMFAILURE ; 
 scalar_t__ pgStatSock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgstat_track_counts ; 

void
FUNC3(Oid dboid, int failurecount)
{
	PgStat_MsgChecksumFailure msg;

	if (pgStatSock == PGINVALID_SOCKET || !pgstat_track_counts)
		return;

	FUNC2(&msg.m_hdr, PGSTAT_MTYPE_CHECKSUMFAILURE);
	msg.m_databaseid = dboid;
	msg.m_failurecount = failurecount;
	msg.m_failure_time = FUNC0();

	FUNC1(&msg, sizeof(msg));
}