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
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(const char *filename)
{
    int res;    
    size_t len;
    wchar_t *widestr;

    /* Covert filename buffer to Unicode. */
	len = FUNC0 (CP_ACP, 0, filename, -1, NULL, 0) ;
	widestr = (wchar_t*)FUNC3(sizeof(wchar_t) * len);
	FUNC0( CP_ACP, 0, filename, -1, widestr, len);
	
	/* Delete file using Win32 CE API call */
	res = FUNC1(widestr);
	
	/* Free wide-char string */
	FUNC2(widestr);

    /* XXX - Consider following recommendations: */
    /* XXX - mloskot - update the st_ctime and st_mtime fields of the parent directory. */
    /* XXX - mloskot - set errno to [EEXIST] or [ENOTEMPTY] if function failed. */

    if (res)
	    return 0; /* success */
    else
        return -1;

}