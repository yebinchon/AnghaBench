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
struct TYPE_3__ {int m_pid; scalar_t__ m_tmStart; scalar_t__ m_tmLastCheckPoint; scalar_t__ m_tmReqBegin; int /*<<< orphan*/  m_iReqCounter; } ;
typedef  TYPE_1__ lsapi_child_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ s_pid_dump_debug_info ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int,int) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8( lsapi_child_status * pStatus, long tmCur )
{
    char achCmd[1024];
    if ( s_pid_dump_debug_info )
    {
        if ( FUNC3( s_pid_dump_debug_info, 0 ) == 0 )
            return;
    }

    FUNC4("Possible runaway process, PPID: %d, PID: %d, "
             "reqCount: %d, process time: %ld, checkpoint time: %ld, start "
             "time: %ld\n", FUNC2(), pStatus->m_pid,
             pStatus->m_iReqCounter, tmCur - pStatus->m_tmReqBegin,
             tmCur - pStatus->m_tmLastCheckPoint, tmCur - pStatus->m_tmStart );

    s_pid_dump_debug_info = FUNC1();
    if (s_pid_dump_debug_info == 0)
    {
        FUNC6( achCmd, 1024, "gdb --batch -ex \"attach %d\" -ex \"set height 0\" "
                "-ex \"bt\" >&2;PATH=$PATH:/usr/sbin lsof -p %d >&2",
                pStatus->m_pid, pStatus->m_pid );
        if ( FUNC7( achCmd ) == -1 )
            FUNC5( "system()" );
        FUNC0( 0 );
    }
}