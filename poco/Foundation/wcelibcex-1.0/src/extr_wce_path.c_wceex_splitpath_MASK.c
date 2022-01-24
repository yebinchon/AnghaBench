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
 size_t _MAX_DIR ; 
 int _MAX_EXT ; 
 int _MAX_FNAME ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char const*,char) ; 

void FUNC2( const char *path, 
                      char *drive, char *dir, char *name, char *ext )
{
    char *slash, *bslash;
    if( drive )
        *drive = 0;
    if( dir )
        *dir = 0;
    if( name )
        *name = 0;
    if( ext )
        *ext = 0;
    if( !path || *path == 0 )
        return;
    slash = FUNC1( path, '/' );
    bslash = FUNC1( path, '\\' );
    if( slash > bslash )
        bslash = slash;
    if( bslash )
    {
        if( dir )
        {
            size_t count = (bslash - path);
            if( count >= _MAX_DIR )
                count = _MAX_DIR - 1;
            FUNC0( dir, path, count );
        }
        bslash++;
    }
    else
        bslash = (char*)path;
    if( name )
    {
        char* dot;
        FUNC0( name, bslash, _MAX_FNAME - 1 );
        dot = FUNC1( name, '.' );
        if( dot )
            *dot = 0;
    }
    if( ext )
    {
        char* dot = FUNC1( bslash, '.' );
        if( dot )
            FUNC0( ext, dot, _MAX_EXT - 1 );
    }
}