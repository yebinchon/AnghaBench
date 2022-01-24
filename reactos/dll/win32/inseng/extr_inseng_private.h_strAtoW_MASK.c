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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline LPWSTR FUNC3(const char *str)
{
    LPWSTR ret = NULL;

    if (str)
    {
        DWORD len = FUNC2( CP_ACP, 0, str, -1, NULL, 0 );
        if ((ret = FUNC1(FUNC0(), 0, len * sizeof(WCHAR))))
            FUNC2(CP_ACP, 0, str, -1, ret, len);
    }

    return ret;
}