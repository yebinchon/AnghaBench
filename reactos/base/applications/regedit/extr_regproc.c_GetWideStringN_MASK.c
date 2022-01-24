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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static WCHAR* FUNC4(const char* strA, int chars, DWORD *len)
{
    if(strA)
    {
        WCHAR* strW;
        *len = FUNC3(CP_ACP, 0, strA, chars, NULL, 0);

        strW = FUNC2(FUNC1(), 0, *len * sizeof(WCHAR));
        FUNC0(strW);
        FUNC3(CP_ACP, 0, strA, chars, strW, *len);
        return strW;
    }
    *len = 0;
    return NULL;
}