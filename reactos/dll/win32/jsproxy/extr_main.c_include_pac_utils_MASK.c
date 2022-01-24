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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static BSTR FUNC8( const WCHAR *script )
{
    static const WCHAR pacjsW[] = {'p','a','c','.','j','s',0};
    HMODULE hmod = FUNC1( "jsproxy.dll" );
    HRSRC rsrc;
    DWORD size;
    const char *data;
    BSTR ret;
    int len;

    if (!(rsrc = FUNC0( hmod, pacjsW, (LPCWSTR)40 ))) return NULL;
    size = FUNC4( hmod, rsrc );
    data = FUNC2( hmod, rsrc );

    len = FUNC3( CP_ACP, 0, data, size, NULL, 0 );
    if (!(ret = FUNC5( NULL, len + FUNC7( script ) + 1 ))) return NULL;
    FUNC3( CP_ACP, 0, data, size, ret, len );
    FUNC6( ret + len, script );
    return ret;
}