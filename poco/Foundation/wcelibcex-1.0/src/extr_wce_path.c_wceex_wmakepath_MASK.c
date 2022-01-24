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
typedef  char wchar_t ;

/* Variables and functions */
 int _MAX_PATH ; 
 char* FUNC0 (char*,char) ; 
 size_t FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

void FUNC3( wchar_t *path,
                      const wchar_t *drive, const wchar_t *dir,
                      const wchar_t *name, const wchar_t *ext )
{
    wchar_t* ptr = path;
    size_t slen, sbuf = _MAX_PATH - 1;
    *path = 0;
    if( drive && *drive )
    {
        FUNC2( ptr, drive, sbuf );
        slen = FUNC1( ptr );
        ptr += slen;
        sbuf -= slen;
    }
    if( dir && *dir && sbuf )
    {
        FUNC2( ptr, dir, sbuf );
        slen = FUNC1( ptr );
        ptr += slen - 1;
        sbuf -= slen;
        // backslash ?
        if( sbuf && *ptr != '\\' && *ptr != '/' )
        {
            wchar_t* slash = FUNC0( path, '/' );
            if( !slash )
                slash = FUNC0( path, '\\' );
            ptr++;
            if( slash )
                *ptr = *slash;
            else
                *ptr = '\\';
            ptr++;
            *ptr = 0;
            sbuf--;
        }
        ptr++;
    }
    if( name && *name && sbuf )
    {
        FUNC2( ptr, name, sbuf );
        slen = FUNC1( ptr );
        ptr += slen;
        sbuf -= slen;
    }
    if( ext && *ext && sbuf )
    {
        if( *ext != '.' )
        {
            *ptr = '.';
            ptr++;
            *ptr = 0;
            sbuf--;
        }
        if( sbuf )
            FUNC2( ptr, ext, sbuf );
    }
}