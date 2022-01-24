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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  hSelf; } ;
typedef  TYPE_1__* PCREATE_DATA ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int INT ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ProcessHeap ; 

__attribute__((used)) static LPWSTR
FUNC4(PCREATE_DATA Data,
                    UINT id)
{
    HWND hwnd;
    LPWSTR lpString = NULL;
    INT iLen = 0;

    hwnd = FUNC0(Data->hSelf,
                      id);
    if (hwnd)
    {
        iLen = FUNC1(hwnd);
        if (iLen)
        {
            lpString = (LPWSTR)FUNC3(ProcessHeap,
                                         0,
                                         (iLen + 1) * sizeof(WCHAR));
            if (lpString)
            {
                FUNC2(hwnd,
                               lpString,
                               iLen + 1);
            }
        }
    }

    return lpString;
}