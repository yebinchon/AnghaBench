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
struct TYPE_2__ {int /*<<< orphan*/  szPath; } ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  STRING_DIRSTACK_HELP2 ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* lpStackTop ; 
 scalar_t__ nStackDepth ; 

INT FUNC5 (LPTSTR rest)
{
    INT ret = 0;
    if (!FUNC4(rest, FUNC2("/?"), 2))
    {
        FUNC0(STRING_DIRSTACK_HELP2);
        return 0;
    }

    if (nStackDepth == 0)
        return 1;

    ret = FUNC3(lpStackTop->szPath) != 0;
    FUNC1 ();

    return ret;
}