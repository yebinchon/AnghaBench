
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef int fi ;
struct TYPE_3__ {int dwAttributes; } ;
typedef TYPE_1__ SHFILEINFO ;


 int Cwd ;
 int ENOENT ;
 int SFGAO_FOLDER ;
 int SHGFI_ATTRIBUTES ;
 int SHGetFileInfo (scalar_t__ const*,int ,TYPE_1__*,int,int ) ;
 int errno ;
 int wcscpy (int ,scalar_t__ const*) ;

int wceex_wchdir( const wchar_t *dirname )
{
    if( !dirname || *dirname == 0 )
    {
        errno = ENOENT;
        return -1;
    }
    else
    {
        SHFILEINFO fi;
        if( !SHGetFileInfo( dirname, 0, &fi, sizeof(fi), SHGFI_ATTRIBUTES ) )
        {
            errno = ENOENT;
            return -1;
        }
        if( !(fi.dwAttributes & SFGAO_FOLDER) )
        {
            errno = ENOENT;
            return -1;
        }
        wcscpy( Cwd, dirname );
        return 0;
    }
}
