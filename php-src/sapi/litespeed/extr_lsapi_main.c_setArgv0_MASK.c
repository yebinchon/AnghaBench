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
 char* argv0 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*) ; 

void FUNC3( int argc, char * argv[] )
{
    char * p;
    int i;
    argv0 = argv[0] + FUNC2( argv[0] );
    p = argv0;
    while(( p > argv[0] )&&( p[-1] != '/'))
        --p;
    if ( p > argv[0] )
    {
        FUNC0( argv[0], p, argv0 - p );
        FUNC1( argv[0] + ( argv0 - p ), 0, p - argv[0] );
        argv0 = argv[0] + (argv0 - p);
    }
    for( i = 1; i < argc; ++i )
    {
        FUNC1( argv[i], 0, FUNC2( argv[i] ) );
    }
}