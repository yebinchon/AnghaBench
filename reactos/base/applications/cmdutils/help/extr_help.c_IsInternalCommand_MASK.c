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
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * InternalCommands ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC2(PCWSTR Cmd)
{
    size_t i;
    int res;

    /* Invalid command */
    if (!Cmd) return FALSE;

    for (i = 0; i < FUNC0(InternalCommands); ++i)
    {
        res = FUNC1(InternalCommands[i], Cmd);
        if (res == 0)
        {
            /* This is an internal command */
            return TRUE;
        }
        else if (res > 0)
        {
            /*
             * The internal commands list is sorted in alphabetical order.
             * We can quit the loop immediately since the current internal
             * command is lexically greater than the command to be tested.
             */
            break;
        }
    }

    /* Command not found */
    return FALSE;
}