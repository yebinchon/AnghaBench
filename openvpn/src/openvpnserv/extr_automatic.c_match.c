
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwFileAttributes; int const* cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int TCHAR ;
typedef scalar_t__* LPCTSTR ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ TEXT (char) ;
 scalar_t__ _tcsicmp (int const*,scalar_t__*) ;
 int * _tcsrchr (int const*,scalar_t__) ;

__attribute__((used)) static bool
match(const WIN32_FIND_DATA *find, LPCTSTR ext)
{
    if (find->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
    {
        return 0;
    }

    if (*ext == TEXT('\0'))
    {
        return 1;
    }



    const TCHAR *p = _tcsrchr(find->cFileName, TEXT('.'));
    return p && p != find->cFileName && _tcsicmp(p + 1, ext) == 0;
}
