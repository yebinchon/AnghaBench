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
struct TYPE_3__ {void* m_dead_tuples; void* m_live_tuples; int /*<<< orphan*/  m_vacuumtime; int /*<<< orphan*/  m_autovacuum; int /*<<< orphan*/  m_tableoid; int /*<<< orphan*/  m_databaseid; int /*<<< orphan*/  m_hdr; } ;
typedef  TYPE_1__ PgStat_MsgVacuum ;
typedef  void* PgStat_Counter ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int /*<<< orphan*/  PGSTAT_MTYPE_VACUUM ; 
 scalar_t__ pgStatSock ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgstat_track_counts ; 

void
FUNC4(Oid tableoid, bool shared,
					 PgStat_Counter livetuples, PgStat_Counter deadtuples)
{
	PgStat_MsgVacuum msg;

	if (pgStatSock == PGINVALID_SOCKET || !pgstat_track_counts)
		return;

	FUNC3(&msg.m_hdr, PGSTAT_MTYPE_VACUUM);
	msg.m_databaseid = shared ? InvalidOid : MyDatabaseId;
	msg.m_tableoid = tableoid;
	msg.m_autovacuum = FUNC1();
	msg.m_vacuumtime = FUNC0();
	msg.m_live_tuples = livetuples;
	msg.m_dead_tuples = deadtuples;
	FUNC2(&msg, sizeof(msg));
}