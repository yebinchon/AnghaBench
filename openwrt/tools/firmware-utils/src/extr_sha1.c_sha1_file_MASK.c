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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  uchar ;
typedef  int /*<<< orphan*/  sha1_context ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6( char *filename, uchar digest[20] )
{
    FILE *f;
    size_t n;
    sha1_context ctx;
    uchar buf[1024];

    if( ( f = FUNC1( filename, "rb" ) ) == NULL )
        return( 1 );

    FUNC4( &ctx );

    while( ( n = FUNC2( buf, 1, sizeof( buf ), f ) ) > 0 )
        FUNC5( &ctx, buf, (uint) n );

    FUNC3( &ctx, digest );

    FUNC0( f );
    return( 0 );
}