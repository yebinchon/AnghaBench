#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ m_pid; int m_iKillSent; long m_tmWaitBegin; long m_tmReqBegin; int /*<<< orphan*/  m_inProcess; } ;
typedef  TYPE_1__ lsapi_child_status ;
struct TYPE_5__ {int m_iCurChildren; int m_iMaxChildren; int m_iMaxIdleChildren; long m_iMaxReqProcessTime; TYPE_1__* m_pChildrenStatusCur; TYPE_1__* m_pChildrenStatus; } ;

/* Variables and functions */
 scalar_t__ ESRCH ; 
 int SIGKILL ; 
 int SIGTERM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,long) ; 
 scalar_t__ errno ; 
 TYPE_2__* g_prefork_server ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 scalar_t__ s_dump_debug_info ; 
 scalar_t__ s_max_idle_secs ; 

__attribute__((used)) static void FUNC4( long tmCur )
{
    int idle = 0;
    int tobekilled;
    int dying = 0;
    int count = 0;
    lsapi_child_status * pStatus = g_prefork_server->m_pChildrenStatus;
    lsapi_child_status * pEnd = g_prefork_server->m_pChildrenStatusCur;
    while( pStatus < pEnd )
    {
        tobekilled = 0;
        if ( pStatus->m_pid != 0 )
        {
            ++count;
            if ( !pStatus->m_inProcess )
            {

                if (g_prefork_server->m_iCurChildren - dying
                        > g_prefork_server->m_iMaxChildren
                    || idle > g_prefork_server->m_iMaxIdleChildren)
                {
                    ++pStatus->m_iKillSent;
                    //tobekilled = SIGUSR1;
                }
                else
                {
                    if (s_max_idle_secs> 0
                        && tmCur - pStatus->m_tmWaitBegin > s_max_idle_secs + 5)
                    {
                        ++pStatus->m_iKillSent;
                        //tobekilled = SIGUSR1;
                    }
                }
                if ( !tobekilled )
                    ++idle;
            }
            else
            {
                if (tmCur - pStatus->m_tmReqBegin >
                        g_prefork_server->m_iMaxReqProcessTime)
                {
                    if ((pStatus->m_iKillSent % 5) == 0 && s_dump_debug_info)
                        FUNC1( pStatus, tmCur );
                    if ( pStatus->m_iKillSent > 5 )
                    {
                        tobekilled = SIGKILL;
                        FUNC3("Force killing runaway process PID: %d"
                                 " with SIGKILL\n", pStatus->m_pid );
                    }
                    else
                    {
                        tobekilled = SIGTERM;
                        FUNC3("Killing runaway process PID: %d with "
                                 "SIGTERM\n", pStatus->m_pid );
                    }
                }
            }
            if ( tobekilled )
            {
                if (( FUNC2( pStatus->m_pid, tobekilled ) == -1 ) &&
                    ( errno == ESRCH ))
                {
                    pStatus->m_pid = 0;
                    --count;
                }
                else
                {
                    ++pStatus->m_iKillSent;
                    ++dying;
                }
            }
        }
        ++pStatus;
    }
    if ( FUNC0( g_prefork_server->m_iCurChildren - count ) > 1 )
    {
        FUNC3("Children tracking is wrong: Cur Children: %d,"
                  " count: %d, idle: %d, dying: %d\n",
                  g_prefork_server->m_iCurChildren, count, idle, dying );
    }
}