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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char* FUNC4(const WCHAR* strW, int chars, DWORD* len)
{
    if(strW)
    {
        char* strA;
        *len = FUNC3(CP_ACP, 0, strW, chars, NULL, 0, NULL, NULL);

        strA = FUNC2(FUNC1(), 0, *len);
        FUNC0(strA);
        FUNC3(CP_ACP, 0, strW, chars, strA, *len, NULL, NULL);
        return strA;
    }
    *len = 0;
    return NULL;
}