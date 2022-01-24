#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {short x; short y; } ;
struct TYPE_7__ {TYPE_1__ pt; int /*<<< orphan*/  time; int /*<<< orphan*/  lParam; int /*<<< orphan*/  wParam; int /*<<< orphan*/  message; int /*<<< orphan*/  hwnd; } ;
struct TYPE_6__ {int /*<<< orphan*/  hwndToolTip; int /*<<< orphan*/  Self; } ;
typedef  TYPE_2__ STATUS_INFO ;
typedef  TYPE_3__ MSG ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTM_RELAYEVENT ; 

__attribute__((used)) static LRESULT
FUNC5 (const STATUS_INFO *infoPtr, UINT uMsg,
		     WPARAM wParam, LPARAM lParam)
{
    MSG msg;

    msg.hwnd = infoPtr->Self;
    msg.message = uMsg;
    msg.wParam = wParam;
    msg.lParam = lParam;
    msg.time = FUNC1 ();
    msg.pt.x = (short)FUNC3(FUNC0 ());
    msg.pt.y = (short)FUNC2(FUNC0 ());

    return FUNC4 (infoPtr->hwndToolTip, TTM_RELAYEVENT, 0, (LPARAM)&msg);
}