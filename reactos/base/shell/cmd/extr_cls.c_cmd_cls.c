
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int INT ;


 int ConClearScreen (int *) ;
 int ConOutResPaging (int ,int ) ;
 int STRING_CLS_HELP ;
 int StdOutScreen ;
 int TRUE ;
 int _T (char*) ;
 int _tcsncmp (int ,int ,int) ;

INT cmd_cls(LPTSTR param)
{
    if (!_tcsncmp(param, _T("/?"), 2))
    {
        ConOutResPaging(TRUE, STRING_CLS_HELP);
        return 0;
    }

    ConClearScreen(&StdOutScreen);
    return 0;
}
