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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(const char *oldfile, const char *newfile)
{
    int res;    
    size_t lenold;
    size_t lennew;
    wchar_t *wsold;
    wchar_t *wsnew;
    
    /* Covert filename buffer to Unicode. */

    /* Old filename */
    lenold = FUNC1 (CP_ACP, 0, oldfile, -1, NULL, 0) ;
    wsold = (wchar_t*)FUNC3(sizeof(wchar_t) * lenold);
    FUNC1( CP_ACP, 0, oldfile, -1, wsold, lenold);
    
    /* New filename */
    lennew = FUNC1 (CP_ACP, 0, newfile, -1, NULL, 0) ;
    wsnew = (wchar_t*)FUNC3(sizeof(wchar_t) * lennew);
    FUNC1(CP_ACP, 0, newfile, -1, wsnew, lennew);

    /* Delete file using Win32 CE API call */
    res = FUNC0(wsold, wsnew);
    
    /* Free wide-char string */
    FUNC2(wsold);
    FUNC2(wsnew);
    
    if (res)
        return 0; /* success */
    else
        return -1;
}