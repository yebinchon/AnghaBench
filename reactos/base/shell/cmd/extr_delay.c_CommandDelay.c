
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;
typedef int INT ;
typedef int DWORD ;


 int ConOutResPaging (int ,int ) ;
 int STRING_DELAY_HELP ;
 int Sleep (int) ;
 int TRUE ;
 int _T (char*) ;
 scalar_t__ _tcsncmp (scalar_t__*,int ,int) ;
 scalar_t__ _tcsnicmp (scalar_t__*,int ,int) ;
 int _ttoi (scalar_t__*) ;
 int error_req_param_missing () ;
 scalar_t__ nErrorLevel ;

INT CommandDelay (LPTSTR param)
{
    DWORD val;
    DWORD mul=1000;

    if (_tcsncmp (param, _T("/?"), 2) == 0)
    {
        ConOutResPaging(TRUE,STRING_DELAY_HELP);
        return 0;
    }

    nErrorLevel = 0;

    if (*param==0)
    {
        error_req_param_missing ();
        return 1;
    }

    if (_tcsnicmp(param,_T("/m"),2) == 0)
    {
        mul = 1;
        param += 2;
    }

    val = _ttoi(param);
    Sleep(val * mul);

    return 0;
}
