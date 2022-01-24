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
typedef  int UINT ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/  LPCTSTR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

LPTSTR
FUNC3(LPCTSTR varName)
{
    static LPTSTR ret = NULL;
    UINT size;

    FUNC2(ret);
    ret = NULL;
    size = FUNC0(varName, NULL, 0);
    if (size > 0)
    {
        ret = FUNC1(size * sizeof(TCHAR));
        if (ret != NULL)
            FUNC0(varName, ret, size + 1);
    }
    return ret;
}