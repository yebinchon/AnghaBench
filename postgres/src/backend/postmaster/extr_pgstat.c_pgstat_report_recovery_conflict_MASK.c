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
struct TYPE_3__ {int m_reason; int /*<<< orphan*/  m_databaseid; int /*<<< orphan*/  m_hdr; } ;
typedef  TYPE_1__ PgStat_MsgRecoveryConflict ;

/* Variables and functions */
 int /*<<< orphan*/  MyDatabaseId ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int /*<<< orphan*/  PGSTAT_MTYPE_RECOVERYCONFLICT ; 
 scalar_t__ pgStatSock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgstat_track_counts ; 

void
FUNC2(int reason)
{
	PgStat_MsgRecoveryConflict msg;

	if (pgStatSock == PGINVALID_SOCKET || !pgstat_track_counts)
		return;

	FUNC1(&msg.m_hdr, PGSTAT_MTYPE_RECOVERYCONFLICT);
	msg.m_databaseid = MyDatabaseId;
	msg.m_reason = reason;
	FUNC0(&msg, sizeof(msg));
}