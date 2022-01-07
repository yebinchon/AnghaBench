
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int fi ;
struct TYPE_3__ {int dwAttributes; } ;
typedef TYPE_1__ SHFILEINFO ;


 int EACCES ;
 int ENOENT ;
 int SFGAO_READONLY ;
 int SHGFI_ATTRIBUTES ;
 int SHGetFileInfo (int const*,int ,TYPE_1__*,int,int ) ;
 int errno ;

int wceex_waccess( const wchar_t *path, int mode )
{
    SHFILEINFO fi;
    if( !SHGetFileInfo( path, 0, &fi, sizeof(fi), SHGFI_ATTRIBUTES ) )
    {
        errno = ENOENT;
        return -1;
    }

    if( mode == 0 )
        return 0;

    if( mode & 2 )
    {
        if( fi.dwAttributes & SFGAO_READONLY )
        {
            errno = EACCES;
            return -1;
        }
    }
    return 0;
}
