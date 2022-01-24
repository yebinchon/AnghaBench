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
typedef  scalar_t__ TCHAR ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT FUNC2(INT (*StringCmp)(LPCTSTR, LPCTSTR),
                      LPCTSTR Left, LPCTSTR Right)
{
    TCHAR *end;
    INT nLeft = FUNC1(Left, &end, 0);
    if (*end == FUNC0('\0'))
    {
        INT nRight = FUNC1(Right, &end, 0);
        if (*end == FUNC0('\0'))
        {
            /* both arguments are numeric */
            return (nLeft < nRight) ? -1 : (nLeft > nRight);
        }
    }
    return StringCmp(Left, Right);
}