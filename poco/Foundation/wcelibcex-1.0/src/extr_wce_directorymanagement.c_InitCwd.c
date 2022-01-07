
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 scalar_t__* Cwd ;
 int GetLastError () ;
 int GetModuleFileName (int *,scalar_t__*,int ) ;
 int _MAX_PATH ;
 int errno ;
 scalar_t__* wcsrchr (scalar_t__*,char) ;

__attribute__((used)) static int InitCwd()
{
    if( Cwd[0] )
        return 0;
    if( !GetModuleFileName( ((void*)0), Cwd, _MAX_PATH ) )
        return errno = GetLastError();
    else
    {
        wchar_t* slash = wcsrchr( Cwd, '\\' );
        if( !slash )
            slash = wcsrchr( Cwd, '/' );
        if( slash )
        {
            if( slash == Cwd )
                slash++;
            *slash = 0;
        }
        return 0;
    }
}
