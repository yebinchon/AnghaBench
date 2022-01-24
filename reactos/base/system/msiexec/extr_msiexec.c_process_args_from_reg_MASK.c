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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  InstallRunOnce ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int*,char***) ; 

__attribute__((used)) static BOOL FUNC9( const WCHAR *ident, int *pargc, WCHAR ***pargv )
{
	LONG r;
	HKEY hkey;
	DWORD sz = 0, type = 0;
	WCHAR *buf;
	BOOL ret = FALSE;

	r = FUNC4(HKEY_LOCAL_MACHINE, InstallRunOnce, &hkey);
	if(r != ERROR_SUCCESS)
		return FALSE;
	r = FUNC5(hkey, ident, 0, &type, 0, &sz);
	if(r == ERROR_SUCCESS && type == REG_SZ)
	{
		int len = FUNC6( *pargv[0] );
		if (!(buf = FUNC1( FUNC0(), 0, sz + (len + 1) * sizeof(WCHAR) )))
		{
			FUNC3( hkey );
			return FALSE;
		}
		FUNC7( buf, *pargv[0], len * sizeof(WCHAR) );
		buf[len++] = ' ';
		r = FUNC5(hkey, ident, 0, &type, (LPBYTE)(buf + len), &sz);
		if( r == ERROR_SUCCESS )
		{
			FUNC8(buf, pargc, pargv);
			ret = TRUE;
		}
		FUNC2(FUNC0(), 0, buf);
	}
	FUNC3(hkey);
	return ret;
}