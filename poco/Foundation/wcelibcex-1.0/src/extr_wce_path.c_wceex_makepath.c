
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _MAX_PATH ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 int strncat (char*,char const*,size_t) ;

void wceex_makepath( char *path,
                     const char *drive, const char *dir,
                     const char *name, const char *ext )
{
    char* ptr = path;
    size_t slen, sbuf = _MAX_PATH - 1;
    *path = 0;
    if( drive && *drive )
    {
        strncat( ptr, drive, sbuf );
        slen = strlen( ptr );
        ptr += slen;
        sbuf -= slen;
    }
    if( dir && *dir && sbuf )
    {
        strncat( ptr, dir, sbuf );
        slen = strlen( ptr );
        ptr += slen - 1;
        sbuf -= slen;

        if( sbuf && *ptr != '\\' && *ptr != '/' )
        {
            char* slash = strchr( path, '/' );
            if( !slash )
                slash = strchr( path, '\\' );
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
        strncat( ptr, name, sbuf );
        slen = strlen( ptr );
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
            strncat( ptr, ext, sbuf );
    }
}
