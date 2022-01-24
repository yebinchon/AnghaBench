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
struct TYPE_3__ {int m_failed; int /*<<< orphan*/  m_timestamp; int /*<<< orphan*/  m_xlog; int /*<<< orphan*/  m_hdr; } ;
typedef  TYPE_1__ PgStat_MsgArchiver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PGSTAT_MTYPE_ARCHIVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(const char *xlog, bool failed)
{
	PgStat_MsgArchiver msg;

	/*
	 * Prepare and send the message
	 */
	FUNC3(&msg.m_hdr, PGSTAT_MTYPE_ARCHIVER);
	msg.m_failed = failed;
	FUNC1(msg.m_xlog, xlog, sizeof(msg.m_xlog));
	msg.m_timestamp = FUNC0();
	FUNC2(&msg, sizeof(msg));
}