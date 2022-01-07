
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_ACP ;
 int ENOMEM ;
 int GetLastError () ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,size_t,int *,int *) ;
 int _MAX_PATH ;
 int errno ;
 int free (int *) ;
 scalar_t__ malloc (size_t) ;
 int * wceex_wfullpath (int *,int *,size_t) ;

char* wceex_fullpath( char *absPath, const char *relPath, size_t maxLength )
{
    wchar_t wrelPath[_MAX_PATH*2], *wabsPath, *wret;
 if( !MultiByteToWideChar( CP_ACP, 0, relPath, -1, wrelPath, _MAX_PATH*2 ) )
    {
        errno = ENOMEM;
        *absPath = 0;
        return ((void*)0);
    }
    if( (wabsPath = (wchar_t*)malloc( maxLength * sizeof(wchar_t) )) == ((void*)0) )
    {
        errno = ENOMEM;
        *absPath = 0;
        return ((void*)0);
    }
    wret = wceex_wfullpath( wabsPath, wrelPath, maxLength );
    if( wret && !WideCharToMultiByte( CP_ACP, 0, wabsPath, -1, absPath,
                                      maxLength, ((void*)0), ((void*)0) ) )
    {
        errno = GetLastError();
        wret = ((void*)0);
    }
    free( wabsPath );
    if( !wret )
    {
        *absPath = 0;
        return ((void*)0);
    }
    return absPath;
}
