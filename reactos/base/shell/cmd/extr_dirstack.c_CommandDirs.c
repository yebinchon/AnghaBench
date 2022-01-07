
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* prev; int szPath; } ;
typedef int LPTSTR ;
typedef TYPE_1__* LPDIRENTRY ;
typedef int INT ;


 int ConOutPuts (int ) ;
 int ConOutResPuts (int ) ;
 int STRING_DIRSTACK_HELP3 ;
 int STRING_DIRSTACK_HELP4 ;
 int _T (char*) ;
 int _tcsncmp (int ,int ,int) ;
 TYPE_1__* lpStackBottom ;
 scalar_t__ nErrorLevel ;

INT CommandDirs (LPTSTR rest)
{
    LPDIRENTRY lpDir;

    if (!_tcsncmp(rest, _T("/?"), 2))
    {
        ConOutResPuts(STRING_DIRSTACK_HELP3);
        return 0;
    }

    nErrorLevel = 0;

    lpDir = lpStackBottom;

    if (lpDir == ((void*)0))
    {
        ConOutResPuts(STRING_DIRSTACK_HELP4);
        return 0;
    }

    while (lpDir != ((void*)0))
    {
        ConOutPuts(lpDir->szPath);
        lpDir = lpDir->prev;
    }

    return 0;
}
