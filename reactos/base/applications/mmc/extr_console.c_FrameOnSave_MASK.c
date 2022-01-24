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
typedef  int /*<<< orphan*/ * PCONSOLE_CHILDFRM_WND ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC1 () ; 

__attribute__((used)) static BOOL
FUNC2(
    HWND hWnd)
{
    PCONSOLE_CHILDFRM_WND pChildInfo;

    pChildInfo = FUNC1();
    if (pChildInfo == NULL)
        return FALSE;

    return FUNC0(hWnd, pChildInfo);
}