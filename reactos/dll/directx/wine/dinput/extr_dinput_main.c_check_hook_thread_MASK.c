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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ DINPUT_instance ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ WM_USER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dinput_hook_crit ; 
 int /*<<< orphan*/  direct_input_list ; 
 int /*<<< orphan*/ * hook_thread_event ; 
 scalar_t__ hook_thread_id ; 
 int /*<<< orphan*/  hook_thread_proc ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC11(void)
{
    static HANDLE hook_thread;
    HMODULE module;

    FUNC3(&dinput_hook_crit);

    FUNC7("IDirectInputs left: %d\n", FUNC9(&direct_input_list));
    if (!FUNC10(&direct_input_list) && !hook_thread)
    {
        FUNC4(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS, (const WCHAR*)DINPUT_instance, &module);
        hook_thread_event = FUNC1(NULL, FALSE, FALSE, NULL);
        hook_thread = FUNC2(NULL, 0, hook_thread_proc, hook_thread_event, 0, &hook_thread_id);
    }
    else if (FUNC10(&direct_input_list) && hook_thread)
    {
        DWORD tid = hook_thread_id;

        if (hook_thread_event) /* if thread is not started yet */
        {
            FUNC8(hook_thread_event, INFINITE);
            FUNC0(hook_thread_event);
            hook_thread_event = NULL;
        }

        hook_thread_id = 0;
        FUNC6(tid, WM_USER+0x10, 0, 0);
        FUNC0(hook_thread);
        hook_thread = NULL;
    }

    FUNC5(&dinput_hook_crit);
    return hook_thread_id != 0;
}