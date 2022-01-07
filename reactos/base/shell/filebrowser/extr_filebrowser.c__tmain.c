
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int _TCHAR ;
struct TYPE_4__ {scalar_t__ pidlRoot; scalar_t__ pidlPath; scalar_t__ strPath; int nCmdShow; int dwFlags; int member_0; } ;
typedef TYPE_1__ EXPLORER_CMDLINE_PARSE_RESULTS ;


 int ILFree (scalar_t__) ;
 int SHCreateFromDesktop (TYPE_1__*) ;
 scalar_t__ SHExplorerParseCmdLine (TYPE_1__*) ;
 int SHFree (scalar_t__) ;
 int SH_EXPLORER_CMDLINE_FLAG_SEPARATE ;
 int SW_SHOWNORMAL ;

int _tmain(int argc, _TCHAR* argv[])
{
    EXPLORER_CMDLINE_PARSE_RESULTS parseResults = { 0 };

    if (SHExplorerParseCmdLine(&parseResults))
    {
        parseResults.dwFlags |= SH_EXPLORER_CMDLINE_FLAG_SEPARATE;
        parseResults.nCmdShow = SW_SHOWNORMAL;
        return SHCreateFromDesktop(&parseResults);
    }

    if (parseResults.strPath)
        SHFree(parseResults.strPath);

    if (parseResults.pidlPath)
        ILFree(parseResults.pidlPath);

    if (parseResults.pidlRoot)
        ILFree(parseResults.pidlRoot);

    return 0;
}
