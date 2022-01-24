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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  MB_PRECOMPOSED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

LPWSTR FUNC2(LPCSTR strA)
{
    LPWSTR strW;
    int iNeededChars;

    if (!strA) return NULL;

    iNeededChars = FUNC1(CP_ACP,
                                       MB_PRECOMPOSED,
                                       strA, -1, NULL, 0);

    strW = (LPWSTR)FUNC0(0, iNeededChars * sizeof(WCHAR));
    if (!strW) return NULL;

    FUNC1(CP_ACP,
                        MB_PRECOMPOSED,
                        strA, -1, strW, iNeededChars);

    return strW;
}