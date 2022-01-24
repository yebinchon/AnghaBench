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
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 int FALSE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int enc_codepage ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
    int
FUNC6(char_u *name, int attrs)
{
    int res;
#ifdef FEAT_MBYTE
    WCHAR	*p = NULL;

    if (enc_codepage >= 0 && (int)GetACP() != enc_codepage)
	p = enc_to_utf16(name, NULL);

    if (p != NULL)
    {
	res = SetFileAttributesW(p, attrs);
	if (res == FALSE
	    && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
	{
	    /* Retry with non-wide function (for Windows 98). */
	    vim_free(p);
	    p = NULL;
	}
    }
    if (p == NULL)
#endif
	res = FUNC2((char *)name, attrs);
#ifdef FEAT_MBYTE
    vim_free(p);
#endif
    return res ? 0 : -1;
}