#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {short x; short y; } ;
struct TYPE_4__ {TYPE_1__ pt; int /*<<< orphan*/  time; int /*<<< orphan*/  lParam; int /*<<< orphan*/  wParam; int /*<<< orphan*/  message; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_2__ MSG ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTM_RELAYEVENT ; 

__attribute__((used)) static void
FUNC5 (HWND hwndTip, HWND hwndMsg, UINT uMsg,
            WPARAM wParam, LPARAM lParam)
{
    MSG msg;

    msg.hwnd = hwndMsg;
    msg.message = uMsg;
    msg.wParam = wParam;
    msg.lParam = lParam;
    msg.time = FUNC1 ();
    msg.pt.x = (short)FUNC3(FUNC0 ());
    msg.pt.y = (short)FUNC2(FUNC0 ());

    FUNC4 (hwndTip, TTM_RELAYEVENT, 0, (LPARAM)&msg);
}