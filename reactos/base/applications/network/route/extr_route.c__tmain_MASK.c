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
typedef  int /*<<< orphan*/  TCHAR ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ **) ; 
 int FUNC5 (int,int /*<<< orphan*/ **) ; 

int FUNC6( int argc, TCHAR **argv )
{
    if( argc < 2 )
        return FUNC1();
    else if ( !FUNC3( argv[1], FUNC2("print") ) )
        return FUNC0();
    else if( !FUNC3( argv[1], FUNC2("add") ) )
        return FUNC4( argc-2, argv+2 );
    else if( !FUNC3( argv[1], FUNC2("delete") ) )
        return FUNC5( argc-2, argv+2 );
    else
        return FUNC1();
}