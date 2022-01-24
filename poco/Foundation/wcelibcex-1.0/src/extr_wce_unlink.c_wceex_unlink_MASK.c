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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(const char *filename)
{
    int res;
    int len;
    wchar_t* pWideStr;

    /* Covert filename buffer to Unicode. */
    len = FUNC2(CP_ACP, 0, filename, -1, NULL, 0) ;
    pWideStr = (wchar_t*)FUNC4(sizeof(wchar_t) * len);
	
    FUNC2(CP_ACP, 0, filename, -1, pWideStr, len);
	
    /* Delete file using Win32 CE API call */
    res = FUNC0(pWideStr);
	
    /* Free wide-char string */
    FUNC3(pWideStr);

    if (res)
        return 0; /* success */
    else
    {
        errno = FUNC1();
        return -1;
    }
}