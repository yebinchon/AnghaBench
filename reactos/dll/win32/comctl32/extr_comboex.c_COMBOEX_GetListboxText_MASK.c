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
typedef  scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ unicode; } ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__* LPSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  INT_PTR ;
typedef  TYPE_1__ COMBOEX_INFO ;
typedef  int /*<<< orphan*/  CBE_ITEMDATA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC5(COMBOEX_INFO *infoPtr, INT_PTR n, LPWSTR buf)
{
    CBE_ITEMDATA *item;
    LPCWSTR str;

    item = FUNC0(infoPtr, n);
    if (!item)
        return 0;

    str = FUNC1(infoPtr, item);
    if (!str)
    {
        if (buf)
        {
            if (infoPtr->unicode)
                buf[0] = 0;
            else
                *((LPSTR)buf) = 0;
        }
        return 0;
    }

    if (infoPtr->unicode)
    {
        if (buf)
            FUNC3(buf, str);
        return FUNC4(str);
    }
    else
    {
        UINT r;
        r = FUNC2(CP_ACP, 0, str, -1, (LPSTR)buf, 0x40000000, NULL, NULL);
        if (r) r--;
        return r;
    }
}