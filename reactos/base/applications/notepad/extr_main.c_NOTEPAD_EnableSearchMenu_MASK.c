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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_2__ {int /*<<< orphan*/  hEdit; int /*<<< orphan*/  hMenu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SEARCH ; 
 int /*<<< orphan*/  CMD_SEARCH_NEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ Globals ; 
 int MF_BYCOMMAND ; 
 int MF_DISABLED ; 
 int MF_ENABLED ; 
 int MF_GRAYED ; 

VOID FUNC2()
{
    FUNC0(Globals.hMenu, CMD_SEARCH,
                   MF_BYCOMMAND | ((FUNC1(Globals.hEdit) == 0) ? MF_DISABLED | MF_GRAYED : MF_ENABLED));
    FUNC0(Globals.hMenu, CMD_SEARCH_NEXT,
                   MF_BYCOMMAND | ((FUNC1(Globals.hEdit) == 0) ? MF_DISABLED | MF_GRAYED : MF_ENABLED));
}