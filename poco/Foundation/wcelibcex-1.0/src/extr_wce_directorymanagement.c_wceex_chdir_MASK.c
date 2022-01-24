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
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int _MAX_PATH ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2( const char *dirname )
{
    if( !dirname || *dirname == 0 )
    {
        errno = ENOENT;
        return -1;
    }
    else
    {
        wchar_t wdirname[_MAX_PATH];
	    if( !FUNC0( CP_ACP, 0, dirname, -1, wdirname, _MAX_PATH ) )
        {
            errno = ENOENT;
            return -1;
        }
        return FUNC1( wdirname );
    }
}