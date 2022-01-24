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
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int _MAX_PATH ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

char* FUNC6( char *absPath, const char *relPath, size_t maxLength )
{
    wchar_t wrelPath[_MAX_PATH*2], *wabsPath, *wret;
	if( !FUNC1( CP_ACP, 0, relPath, -1, wrelPath, _MAX_PATH*2 ) )
    {
        errno = ENOMEM;
        *absPath = 0;
        return NULL;
    }
    if( (wabsPath = (wchar_t*)FUNC4( maxLength * sizeof(wchar_t) )) == NULL )
    {
        errno = ENOMEM;
        *absPath = 0;
        return NULL;
    }
    wret = FUNC5( wabsPath, wrelPath, maxLength ); 
    if( wret && !FUNC2( CP_ACP, 0, wabsPath, -1, absPath, 
                                      maxLength, NULL, NULL ) )
    {
        errno = FUNC0();
        wret = NULL;
    }
    FUNC3( wabsPath );
    if( !wret )
    {
        *absPath = 0;
        return NULL;
    }
    return absPath;
}