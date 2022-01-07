
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int INT ;


 int ConErrResPuts (int ) ;
 int ConOutResPaging (int ,int ) ;
 int OnOffCommand (int ,int *,int ) ;
 int STRING_VERIFY_HELP1 ;
 int STRING_VERIFY_HELP2 ;
 int STRING_VERIFY_HELP3 ;
 int TRUE ;
 int _T (char*) ;
 int _tcsncmp (int ,int ,int) ;
 int bVerify ;
 int nErrorLevel ;

INT cmd_verify (LPTSTR param)
{
    if (!_tcsncmp (param, _T("/?"), 2))
    {
        ConOutResPaging(TRUE,STRING_VERIFY_HELP1);
        return 0;
    }

    if (!OnOffCommand(param, &bVerify, STRING_VERIFY_HELP2))
    {
        ConErrResPuts(STRING_VERIFY_HELP3);
        return nErrorLevel = 1;
    }

    return nErrorLevel = 0;
}
