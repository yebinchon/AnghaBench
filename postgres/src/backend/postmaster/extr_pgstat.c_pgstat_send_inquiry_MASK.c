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
typedef  void* TimestampTz ;
struct TYPE_3__ {int /*<<< orphan*/  databaseid; void* cutoff_time; void* clock_time; int /*<<< orphan*/  m_hdr; } ;
typedef  TYPE_1__ PgStat_MsgInquiry ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  PGSTAT_MTYPE_INQUIRY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(TimestampTz clock_time, TimestampTz cutoff_time, Oid databaseid)
{
	PgStat_MsgInquiry msg;

	FUNC1(&msg.m_hdr, PGSTAT_MTYPE_INQUIRY);
	msg.clock_time = clock_time;
	msg.cutoff_time = cutoff_time;
	msg.databaseid = databaseid;
	FUNC0(&msg, sizeof(msg));
}