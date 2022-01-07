
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ DWORD ;


 int ENOMEM ;
 int ERANGE ;
 int errno ;
 scalar_t__ malloc (int) ;
 scalar_t__ wceex_GetCurrentDirectoryW (int,int *) ;

wchar_t* wceex_wgetcwd( wchar_t *buffer, int maxlen )
{
    if( !buffer && (buffer = (wchar_t*)malloc(maxlen * sizeof(wchar_t))) == ((void*)0) )
    {
        errno = ENOMEM;
        return ((void*)0);
    }
    else
    {
        DWORD slen = wceex_GetCurrentDirectoryW( maxlen, buffer );
        if( !slen )
            return ((void*)0);
        if( slen >= (DWORD)maxlen )
        {
            errno = ERANGE;
            return ((void*)0);
        }
        return buffer;
    }
}
