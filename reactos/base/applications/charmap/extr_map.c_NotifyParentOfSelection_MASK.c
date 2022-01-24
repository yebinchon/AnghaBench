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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/ * hParent; int /*<<< orphan*/  hMapWnd; } ;
typedef  TYPE_1__* PMAP ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_COMMAND ; 

__attribute__((used)) static
LRESULT
FUNC4(PMAP infoPtr,
                        UINT code,
                        WCHAR ch)
{
    LRESULT Ret = 0;

    if (infoPtr->hParent != NULL)
    {
        DWORD dwIdc = FUNC0(infoPtr->hMapWnd, GWLP_ID);
        /*
         * Push directly into the event queue instead of waiting
         * the parent to be unlocked.
         * High word of LPARAM is still available for future needs...
         */
        Ret = FUNC3(infoPtr->hParent,
                          WM_COMMAND,
                          FUNC2((WORD)dwIdc, (WORD)code),
                          (LPARAM)FUNC1(ch));
    }

    return Ret;
}