
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int INT ;


 int ConOutResPaging (int ,int ) ;
 int STRING_REM_HELP ;
 int TRUE ;
 int _T (char*) ;
 int _tcsncmp (int ,int ,int) ;

INT CommandRem (LPTSTR param)
{
    if (!_tcsncmp (param, _T("/?"), 2))
    {
        ConOutResPaging(TRUE,STRING_REM_HELP);
    }

    return 0;
}
