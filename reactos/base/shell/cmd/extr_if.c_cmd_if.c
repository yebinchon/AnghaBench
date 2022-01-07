
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int INT ;


 int ConOutResPaging (int ,int ) ;
 int STRING_IF_HELP1 ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int _T (char*) ;
 int _tcsncmp (int ,int ,int) ;
 int debugstr_aw (int ) ;
 int error_syntax (int ) ;

INT cmd_if (LPTSTR param)
{
    TRACE ("cmd_if: (\'%s\')\n", debugstr_aw(param));

    if (!_tcsncmp (param, _T("/?"), 2))
    {
        ConOutResPaging(TRUE,STRING_IF_HELP1);
        return 0;
    }

    error_syntax(param);
    return 1;
}
