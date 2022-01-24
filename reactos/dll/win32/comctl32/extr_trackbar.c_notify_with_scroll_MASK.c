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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int dwStyle; scalar_t__ hwndSelf; int /*<<< orphan*/  hwndNotify; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TBS_VERT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_HSCROLL ; 
 int /*<<< orphan*/  WM_VSCROLL ; 

__attribute__((used)) static void FUNC2 (const TRACKBAR_INFO *infoPtr, UINT code)
{
    UINT scroll = infoPtr->dwStyle & TBS_VERT ? WM_VSCROLL : WM_HSCROLL;

    FUNC1("%x\n", code);

    FUNC0 (infoPtr->hwndNotify, scroll, code, (LPARAM)infoPtr->hwndSelf);
}