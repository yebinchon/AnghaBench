
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPTSTR ;
typedef int INT ;


 int ConOutResPaging (int ,int ) ;
 int ExitBatch () ;
 int FALSE ;
 int STRING_EXIT_HELP ;
 int TRUE ;
 int _T (char*) ;
 scalar_t__ _istdigit (int ) ;
 scalar_t__ _istspace (int ) ;
 int _tcsncmp (int *,int ,int) ;
 scalar_t__ _tcsnicmp (int *,int ,int) ;
 int _ttoi (int *) ;
 int bExit ;
 scalar_t__ bc ;
 int nErrorLevel ;

INT CommandExit(LPTSTR param)
{
    if (!_tcsncmp(param, _T("/?"), 2))
    {
        ConOutResPaging(TRUE, STRING_EXIT_HELP);


        bExit = FALSE;
        return 0;
    }

    if (_tcsnicmp(param, _T("/b"), 2) == 0)
    {
        param += 2;





        if (bc)
            ExitBatch();
        else
            bExit = TRUE;
    }
    else
    {

        bExit = TRUE;
    }


    while (_istspace(*param))
        param++;


    if (_istdigit(*param))
        nErrorLevel = _ttoi(param);

    return 0;
}
