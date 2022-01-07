
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
 int wceex_waccess (int *,int) ;

int wceex_access( const char *path, int mode )
{
    wchar_t wpath[_MAX_PATH];
 if( !MultiByteToWideChar( CP_ACP, 0, path, -1, wpath, _MAX_PATH ) )
    {
        errno = ENOENT;
        return -1;
    }
    return wceex_waccess( wpath, mode );
}
