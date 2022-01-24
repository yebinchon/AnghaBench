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
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int WS_BORDER ; 
 int WS_HSCROLL ; 
 int WS_VSCROLL ; 

__attribute__((used)) static LRESULT FUNC3 (HWND hwnd)
{
    /* WARNING: The COMBOEX_INFO structure is not yet created */
    DWORD oldstyle, newstyle;

    oldstyle = (DWORD)FUNC0 (hwnd, GWL_STYLE);
    newstyle = oldstyle & ~(WS_VSCROLL | WS_HSCROLL | WS_BORDER);
    if (newstyle != oldstyle) {
	FUNC2("req style %08x, resetting style %08x\n",
	      oldstyle, newstyle);
	FUNC1 (hwnd, GWL_STYLE, newstyle);
    }
    return 1;
}