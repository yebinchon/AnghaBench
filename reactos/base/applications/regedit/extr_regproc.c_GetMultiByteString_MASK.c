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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

char* FUNC4(const WCHAR* strW)
{
    if(strW)
    {
        char* strA;
        int len = FUNC3(CP_ACP, 0, strW, -1, NULL, 0, NULL, NULL);

        strA = FUNC2(FUNC1(), 0, len);
        FUNC0(strA);
        FUNC3(CP_ACP, 0, strW, -1, strA, len, NULL, NULL);
        return strA;
    }
    return NULL;
}