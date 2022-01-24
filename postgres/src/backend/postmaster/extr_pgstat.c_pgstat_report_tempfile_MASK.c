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
struct TYPE_3__ {size_t m_filesize; int /*<<< orphan*/  m_databaseid; int /*<<< orphan*/  m_hdr; } ;
typedef  TYPE_1__ PgStat_MsgTempFile ;

/* Variables and functions */
 int /*<<< orphan*/  MyDatabaseId ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int /*<<< orphan*/  PGSTAT_MTYPE_TEMPFILE ; 
 scalar_t__ pgStatSock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgstat_track_counts ; 

void
FUNC2(size_t filesize)
{
	PgStat_MsgTempFile msg;

	if (pgStatSock == PGINVALID_SOCKET || !pgstat_track_counts)
		return;

	FUNC1(&msg.m_hdr, PGSTAT_MTYPE_TEMPFILE);
	msg.m_databaseid = MyDatabaseId;
	msg.m_filesize = filesize;
	FUNC0(&msg, sizeof(msg));
}