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
struct TYPE_3__ {int /*<<< orphan*/  m_hdr; int /*<<< orphan*/  m_resettarget; } ;
typedef  TYPE_1__ PgStat_MsgResetsharedcounter ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int /*<<< orphan*/  PGSTAT_MTYPE_RESETSHAREDCOUNTER ; 
 int /*<<< orphan*/  RESET_ARCHIVER ; 
 int /*<<< orphan*/  RESET_BGWRITER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ pgStatSock ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

void
FUNC7(const char *target)
{
	PgStat_MsgResetsharedcounter msg;

	if (pgStatSock == PGINVALID_SOCKET)
		return;

	if (FUNC6(target, "archiver") == 0)
		msg.m_resettarget = RESET_ARCHIVER;
	else if (FUNC6(target, "bgwriter") == 0)
		msg.m_resettarget = RESET_BGWRITER;
	else
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("unrecognized reset target: \"%s\"", target),
				 FUNC2("Target must be \"archiver\" or \"bgwriter\".")));

	FUNC5(&msg.m_hdr, PGSTAT_MTYPE_RESETSHAREDCOUNTER);
	FUNC4(&msg, sizeof(msg));
}