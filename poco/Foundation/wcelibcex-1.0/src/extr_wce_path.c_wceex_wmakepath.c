
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int _MAX_PATH ;
 char* wcschr (char*,char) ;
 size_t wcslen (char*) ;
 int wcsncat (char*,char const*,size_t) ;

void wceex_wmakepath( wchar_t *path,
                      const wchar_t *drive, const wchar_t *dir,
                      const wchar_t *name, const wchar_t *ext )
{
    wchar_t* ptr = path;
    size_t slen, sbuf = _MAX_PATH - 1;
    *path = 0;
    if( drive && *drive )
    {
        wcsncat( ptr, drive, sbuf );
        slen = wcslen( ptr );
        ptr += slen;
        sbuf -= slen;
    }
    if( dir && *dir && sbuf )
    {
        wcsncat( ptr, dir, sbuf );
        slen = wcslen( ptr );
        ptr += slen - 1;
        sbuf -= slen;

        if( sbuf && *ptr != '\\' && *ptr != '/' )
        {
            wchar_t* slash = wcschr( path, '/' );
            if( !slash )
                slash = wcschr( path, '\\' );
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
        wcsncat( ptr, name, sbuf );
        slen = wcslen( ptr );
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
            wcsncat( ptr, ext, sbuf );
    }
}
