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
struct TYPE_2__ {int /*<<< orphan*/  hMainWnd; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 scalar_t__ CMD_DELETE ; 
 scalar_t__ CMD_SAVE_AS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ Globals ; 
 int /*<<< orphan*/  MF_ENABLED ; 
 int /*<<< orphan*/  MF_GRAYED ; 

__attribute__((used)) static void FUNC4(HMENU hMenu, LPARAM index)
{
    if ((FUNC3(hMenu, 0) == CMD_DELETE) || (FUNC3(hMenu, 1) == CMD_SAVE_AS))
    {
        if (FUNC0() == 0)
        {
            FUNC2(hMenu, CMD_DELETE, MF_GRAYED);
            FUNC2(hMenu, CMD_SAVE_AS, MF_GRAYED);
        }
        else
        {
            FUNC2(hMenu, CMD_DELETE, MF_ENABLED);
            FUNC2(hMenu, CMD_SAVE_AS, MF_ENABLED);
        }
    }

    FUNC1(Globals.hMainWnd);
}