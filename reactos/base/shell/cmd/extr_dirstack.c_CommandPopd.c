
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int szPath; } ;
typedef int LPTSTR ;
typedef int INT ;


 int ConOutResPuts (int ) ;
 int PopDirectory () ;
 int STRING_DIRSTACK_HELP2 ;
 int _T (char*) ;
 scalar_t__ _tchdir (int ) ;
 int _tcsncmp (int ,int ,int) ;
 TYPE_1__* lpStackTop ;
 scalar_t__ nStackDepth ;

INT CommandPopd (LPTSTR rest)
{
    INT ret = 0;
    if (!_tcsncmp(rest, _T("/?"), 2))
    {
        ConOutResPuts(STRING_DIRSTACK_HELP2);
        return 0;
    }

    if (nStackDepth == 0)
        return 1;

    ret = _tchdir(lpStackTop->szPath) != 0;
    PopDirectory ();

    return ret;
}
