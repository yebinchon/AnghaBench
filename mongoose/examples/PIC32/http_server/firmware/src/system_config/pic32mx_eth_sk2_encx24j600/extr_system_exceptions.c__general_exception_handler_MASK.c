#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_ERROR_ERROR ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  _cause_str ; 
 int /*<<< orphan*/  _excep_addr ; 
 size_t _excep_code ; 
 int /*<<< orphan*/ * cause ; 

void FUNC4 ( void )
{
    /* Mask off Mask of the ExcCode Field from the Cause Register
    Refer to the MIPs Software User's manual */
    _excep_code = (FUNC2() & 0x0000007C) >> 2;
    _excep_addr = FUNC3();
    _cause_str  = cause[_excep_code];

    FUNC1(SYS_ERROR_ERROR, "\nGeneral Exception %s (cause=%d, addr=%x).\n",
                    _cause_str, _excep_code, _excep_addr);

    while (1)
    {
        FUNC0();
    }
}