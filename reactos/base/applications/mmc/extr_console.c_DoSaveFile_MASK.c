#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* pFileName; } ;
typedef  TYPE_1__* PCONSOLE_CHILDFRM_WND ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC2(
    HWND hWnd,
    PCONSOLE_CHILDFRM_WND pChildInfo)
{
    FUNC0("pChildInfo %p\n", pChildInfo);

    FUNC0("FileName %S\n", pChildInfo->pFileName);

    if (pChildInfo->pFileName == NULL)
        return FUNC1(hWnd, pChildInfo);

    /* FIXME: Save the console here! */

    return TRUE;
}