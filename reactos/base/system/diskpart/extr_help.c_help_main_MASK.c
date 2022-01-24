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
struct TYPE_3__ {int /*<<< orphan*/  help; scalar_t__ name; } ;
typedef  TYPE_1__* PCOMMAND ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* cmds ; 
 int /*<<< orphan*/  FUNC2 () ; 

BOOL FUNC3(INT argc, LPWSTR *argv)
{
    PCOMMAND cmdptr;

    if (argc == 1)
    {
        FUNC2();
        return TRUE;
    }

    /* Scan internal command table */
    for (cmdptr = cmds; cmdptr->name; cmdptr++)
    {
        if (FUNC1(argv[1], cmdptr->name) == 0)
        {
            FUNC0(StdOut, cmdptr->help);
            return TRUE;
        }
    }

    FUNC2();

    return TRUE;
}