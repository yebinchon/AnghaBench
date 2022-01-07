
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int settings_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int CheckConfigPath (int const*,int *,int const*) ;
 int FALSE ;
 int OptionLookup (int *,int ) ;
 int TRUE ;
 scalar_t__ wcscmp (int *,char*) ;
 int white_list ;

BOOL
CheckOption(const WCHAR *workdir, int argc, WCHAR *argv[], const settings_t *s)
{


    if (wcscmp(argv[0], L"--config") == 0
        && argc > 1
        && !CheckConfigPath(workdir, argv[1], s)
        )
    {
        return FALSE;
    }


    if (OptionLookup(argv[0] + 2, white_list) == -1)
    {
        return FALSE;
    }

    return TRUE;
}
