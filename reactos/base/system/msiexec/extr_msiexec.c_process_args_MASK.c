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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( WCHAR *cmdline, int *pargc, WCHAR ***pargv )
{
    WCHAR **argv, *p;
    int i, count;

    *pargc = 0;
    *pargv = NULL;

    count = FUNC3( cmdline, NULL );
    if (!(p = FUNC1( FUNC0(), 0, (FUNC4(cmdline) + count + 1) * sizeof(WCHAR) )))
        return;

    count = FUNC3( cmdline, p );
    if (!(argv = FUNC1( FUNC0(), 0, (count + 1) * sizeof(WCHAR *) )))
    {
        FUNC2( FUNC0(), 0, p );
        return;
    }
    for (i = 0; i < count; i++)
    {
        argv[i] = p;
        p += FUNC4( p ) + 1;
    }
    argv[i] = NULL;

    *pargc = count;
    *pargv = argv;
}