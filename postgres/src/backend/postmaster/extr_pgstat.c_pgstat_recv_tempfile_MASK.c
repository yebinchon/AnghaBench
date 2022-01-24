#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ m_filesize; int /*<<< orphan*/  m_databaseid; } ;
struct TYPE_5__ {int n_temp_files; int /*<<< orphan*/  n_temp_bytes; } ;
typedef  TYPE_1__ PgStat_StatDBEntry ;
typedef  TYPE_2__ PgStat_MsgTempFile ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(PgStat_MsgTempFile *msg, int len)
{
	PgStat_StatDBEntry *dbentry;

	dbentry = FUNC0(msg->m_databaseid, true);

	dbentry->n_temp_bytes += msg->m_filesize;
	dbentry->n_temp_files += 1;
}