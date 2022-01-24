#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tcpip; int /*<<< orphan*/  drvUsart0; int /*<<< orphan*/  sysTmr; int /*<<< orphan*/  sysDevcon; int /*<<< orphan*/  sysConsole0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__ sysObj ; 

void FUNC9 ( void )
{
    /* Maintain system services */
    /* SYS_COMMAND layer tasks routine */
    FUNC4();
    FUNC5(sysObj.sysConsole0);
    FUNC6(sysObj.sysDevcon);
    /* SYS_TMR Device layer tasks routine */
    FUNC7(sysObj.sysTmr);

    /* Maintain Device Drivers */
    FUNC3(sysObj.drvUsart0);
    FUNC2(sysObj.drvUsart0);
    FUNC1 (sysObj.drvUsart0);

    /* Maintain Middleware & Other Libraries */
    /* Maintain the TCP/IP Stack*/
    FUNC8(sysObj.tcpip);

    /* Maintain the application's state machine. */
    FUNC0();
}