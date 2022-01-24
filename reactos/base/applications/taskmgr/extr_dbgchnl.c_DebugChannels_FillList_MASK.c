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
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PROCESS_VM_OPERATION ; 
 int PROCESS_VM_READ ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETREDRAW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_channel_CB ; 

__attribute__((used)) static void FUNC6(HWND hChannelLV)
{
    HANDLE  hProcess;

    (void)FUNC2(hChannelLV);

    hProcess = FUNC3(PROCESS_VM_OPERATION | PROCESS_VM_READ, FALSE, FUNC1());
    if (!hProcess) return; /* FIXME messagebox */
    FUNC4(hChannelLV, WM_SETREDRAW, FALSE, 0);
    FUNC5(hProcess, list_channel_CB, (void*)hChannelLV, TRUE);
    FUNC4(hChannelLV, WM_SETREDRAW, TRUE, 0);
    FUNC0(hProcess);
}