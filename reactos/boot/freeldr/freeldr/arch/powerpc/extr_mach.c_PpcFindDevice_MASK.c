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
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,char*,char*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC7( int depth, int parent, char *devname, int *nth ) {
    static char buf[256];
    int next = 0;
    int gotname = 0;
    int match = 0;
    int i;

    next = FUNC1( parent );

    //printf( "next = %x\n", next );

    gotname = FUNC2(parent, "name", buf, 256);

    //printf( "gotname = %d\n", gotname );

    match = !FUNC6(buf, devname, FUNC5(devname));

    if( !nth && match ) return parent;

    for( i = 0; i < depth; i++ ) FUNC0( ' ' );

    if( depth == 1 ) {
    if( gotname > 0 ) {
        FUNC4( "%c Name: %s\n", match ? '*' : ' ', buf );
    } else {
        FUNC4( "- No name attribute for %x\n", parent );
    }
    }

    while( !match && next ) {
        i = FUNC7( depth+1, next, devname, nth );
    if( i ) return i;
        next = FUNC3( next );
    }

    return 0;
}