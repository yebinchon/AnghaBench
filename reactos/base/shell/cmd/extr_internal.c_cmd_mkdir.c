
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef scalar_t__ INT ;


 int ConErrResPuts (int ) ;
 int ConOutResPaging (int ,int ) ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 int ErrorMessage (scalar_t__,int ) ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int MakeFullPath (int ) ;
 int STRING_ERROR_REQ_PARAM_MISSING ;
 int STRING_MD_ERROR2 ;
 int STRING_MKDIR_HELP ;
 int TRUE ;
 int _T (char*) ;
 int _tcsncmp (int ,int ,int) ;
 int freep (int *) ;
 scalar_t__ nErrorLevel ;
 int * split (int ,scalar_t__*,int ,int ) ;

INT cmd_mkdir (LPTSTR param)
{
    LPTSTR *p;
    INT argc, i;
    if (!_tcsncmp (param, _T("/?"), 2))
    {
        ConOutResPaging(TRUE,STRING_MKDIR_HELP);
        return 0;
    }

    p = split (param, &argc, FALSE, FALSE);
    if (argc == 0)
    {
        ConErrResPuts(STRING_ERROR_REQ_PARAM_MISSING);
        freep(p);
        nErrorLevel = 1;
        return 1;
    }

    nErrorLevel = 0;
    for (i = 0; i < argc; i++)
    {
        if (!MakeFullPath(p[i]))
        {
            if (GetLastError() == ERROR_PATH_NOT_FOUND)
            {
                ConErrResPuts(STRING_MD_ERROR2);
            }
            else
            {
                ErrorMessage (GetLastError(), _T("MD"));
            }
            nErrorLevel = 1;
        }
    }

    freep (p);
    return nErrorLevel;
}
