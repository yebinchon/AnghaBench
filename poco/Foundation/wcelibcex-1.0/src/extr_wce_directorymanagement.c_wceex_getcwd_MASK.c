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

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  Cwd ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int) ; 

char* FUNC4( char *buffer, int maxlen )
{
    if( !buffer && (buffer = (char*)FUNC3(maxlen)) == NULL )
    {
        errno = ENOMEM;
        return NULL;
    }
    if( FUNC1() )
        return NULL;    
	if( !FUNC2( CP_ACP, 0, Cwd, -1, buffer, maxlen, NULL, NULL ) )
    {
        errno = FUNC0();
        return NULL;
    }
    return buffer;
}