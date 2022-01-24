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
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int enc_codepage ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC7(char_u *name)
{
#ifdef FEAT_MBYTE
    WCHAR	*wn = NULL;
    int		n;
#endif

    FUNC6(name, FILE_ATTRIBUTE_NORMAL);

#ifdef FEAT_MBYTE
    if (enc_codepage >= 0 && (int)GetACP() != enc_codepage)
    {
	wn = enc_to_utf16(name, NULL);
	if (wn != NULL)
	{
	    n = DeleteFileW(wn) ? 0 : -1;
	    vim_free(wn);
	    if (n == 0 || GetLastError() != ERROR_CALL_NOT_IMPLEMENTED)
		return n;
	    /* Retry with non-wide function (for Windows 98). */
	}
    }
#endif
    return FUNC0(name) ? 0 : -1;
}