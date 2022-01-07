
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
struct _stat {int dummy; } ;
struct TYPE_3__ {int dwFileAttributes; scalar_t__ dwReserved0; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int OPEN_OH_ARGTYPE ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateFile (char const*,int ,int,int *,int ,int ,int *) ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_REPARSE_POINT ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_READ_ATTRIBUTES ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (char const*,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ IO_REPARSE_TAG_SYMLINK ;
 int OPEN_EXISTING ;
 scalar_t__ TRUE ;
 int _O_RDONLY ;
 int _close (int) ;
 int _fstat (int,struct _stat*) ;
 int _open_osfhandle (int ,int ) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int
stat_symlink_aware(const char *name, struct stat *stp)
{
    return stat(name, stp);
}
