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
typedef  scalar_t__* LPWSTR ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  Cwd ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

DWORD FUNC4( DWORD nBufferLength, LPWSTR lpBuffer )
{
    *lpBuffer = 0;
    if( FUNC0() )
    {
        FUNC1( errno );
        return 0;
    }
    else
    {
        size_t slen = FUNC3( Cwd );
        if( slen >= (size_t)nBufferLength )
            return slen + 1;
        FUNC2( lpBuffer, Cwd );
        return slen;
    }
}