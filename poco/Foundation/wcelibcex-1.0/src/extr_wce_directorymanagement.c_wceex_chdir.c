
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_ACP ;
 int ENOENT ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int _MAX_PATH ;
 int errno ;
 int wceex_wchdir (int *) ;

int wceex_chdir( const char *dirname )
{
    if( !dirname || *dirname == 0 )
    {
        errno = ENOENT;
        return -1;
    }
    else
    {
        wchar_t wdirname[_MAX_PATH];
     if( !MultiByteToWideChar( CP_ACP, 0, dirname, -1, wdirname, _MAX_PATH ) )
        {
            errno = ENOENT;
            return -1;
        }
        return wceex_wchdir( wdirname );
    }
}
