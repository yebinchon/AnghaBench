#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  shInputDll ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int cbSize; void* lpParameters; void* lpFile; void* lpVerb; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ SHELLEXECUTEINFO ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int MB_ICONERROR ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 

__attribute__((used)) static VOID
FUNC4(HWND hWndParent)
{
    SHELLEXECUTEINFO shInputDll;

    FUNC3(&shInputDll, 0x0, sizeof(SHELLEXECUTEINFO));

    shInputDll.cbSize = sizeof(shInputDll);
    shInputDll.hwnd = hWndParent;
    shInputDll.lpVerb = FUNC2("open");
    shInputDll.lpFile = FUNC2("rundll32.exe");
    shInputDll.lpParameters = FUNC2("shell32.dll,Control_RunDLL hdwwiz.cpl");

    if (FUNC1(&shInputDll) == 0)
    {
        FUNC0(NULL,
                   FUNC2("Can't start hdwwiz.cpl"),
                   NULL,
                   MB_OK | MB_ICONERROR);
    }
}