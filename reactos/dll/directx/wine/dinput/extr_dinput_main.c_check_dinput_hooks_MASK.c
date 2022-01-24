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
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {int dwCoopLevel; } ;
typedef  int /*<<< orphan*/  LPDIRECTINPUTDEVICE8W ;
typedef  TYPE_1__ IDirectInputDeviceImpl ;
typedef  int /*<<< orphan*/ * HHOOK ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DINPUT_instance ; 
 int DISCL_FOREGROUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WH_CALLWNDPROC ; 
 scalar_t__ WM_USER ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  callwndproc_proc ; 
 int /*<<< orphan*/  dinput_hook_crit ; 
 int /*<<< orphan*/ * hook_thread_event ; 
 int /*<<< orphan*/  hook_thread_id ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(LPDIRECTINPUTDEVICE8W iface, BOOL acquired)
{
    static HHOOK callwndproc_hook;
    static ULONG foreground_cnt;
    IDirectInputDeviceImpl *dev = FUNC8(iface);

    FUNC1(&dinput_hook_crit);

    if (dev->dwCoopLevel & DISCL_FOREGROUND)
    {
        if (acquired)
            foreground_cnt++;
        else
            foreground_cnt--;
    }

    if (foreground_cnt && !callwndproc_hook)
        callwndproc_hook = FUNC5( WH_CALLWNDPROC, callwndproc_proc,
                                              DINPUT_instance, FUNC2() );
    else if (!foreground_cnt && callwndproc_hook)
    {
        FUNC6( callwndproc_hook );
        callwndproc_hook = NULL;
    }

    if (hook_thread_event) /* if thread is not started yet */
    {
        FUNC7(hook_thread_event, INFINITE);
        FUNC0(hook_thread_event);
        hook_thread_event = NULL;
    }

    FUNC4( hook_thread_id, WM_USER+0x10, 1, 0 );

    FUNC3(&dinput_hook_crit);
}