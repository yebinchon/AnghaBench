#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_5__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/ * LPWORD ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ COORD ;

/* Variables and functions */
 int Columns ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__,int /*<<< orphan*/ *) ; 
 int Rows ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int g_attrCurrent ; 
 int /*<<< orphan*/  g_hConOut ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void)
{
    COORD   coordOrigin = {0, 0};
    WORD    attrFlash = ~g_attrCurrent & 0xff;

    DWORD   dwDummy;
    LPWORD  oldattrs = (LPWORD)FUNC4(Rows * Columns * sizeof(WORD));

    if (oldattrs == NULL)
	return;
    FUNC1(g_hConOut, oldattrs, Rows * Columns,
			       coordOrigin, &dwDummy);
    FUNC0(g_hConOut, attrFlash, Rows * Columns,
			       coordOrigin, &dwDummy);

    FUNC2(15);	    /* wait for 15 msec */
    FUNC3(g_hConOut, oldattrs, Rows * Columns,
				coordOrigin, &dwDummy);
    FUNC5(oldattrs);
}