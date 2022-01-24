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
typedef  int /*<<< orphan*/  wineW ;
typedef  char WCHAR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UNIXCP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int FUNC9 (char const*) ; 

const WCHAR *FUNC10(void)
{
    static const BOOL is_win64 = sizeof(void *) > sizeof(int); /* FIXME: should depend on target process */
    static const WCHAR wineW[] = {'w','i','n','e',0};
    static const WCHAR suffixW[] = {'6','4',0};
    static const WCHAR *loader;

    if (!loader)
    {
        WCHAR *p, *buffer;
        const char *ptr;

        /* All binaries are loaded with WINELOADER (if run from tree) or by the
         * main executable
         */
        if ((ptr = FUNC5("WINELOADER")))
        {
            DWORD len = 2 + FUNC2( CP_UNIXCP, 0, ptr, -1, NULL, 0 );
            buffer = FUNC1( FUNC0(), 0, len * sizeof(WCHAR) );
            FUNC2( CP_UNIXCP, 0, ptr, -1, buffer, len );
        }
        else
        {
            buffer = FUNC1( FUNC0(), 0, sizeof(wineW) + 2 * sizeof(WCHAR) );
            FUNC8( buffer, wineW );
        }
        p = buffer + FUNC9( buffer ) - FUNC9( suffixW );
        if (p > buffer && !FUNC7( p, suffixW ))
        {
            if (!is_win64) *p = 0;
        }
        else if (is_win64) FUNC6( buffer, suffixW );

        FUNC3( "returning %s\n", FUNC4(buffer) );
        loader = buffer;
    }
    return loader;
}