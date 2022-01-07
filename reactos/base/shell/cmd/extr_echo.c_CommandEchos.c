
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int INT ;


 int ConOutPrintf (int ,int ) ;
 int ConOutResPuts (int ) ;
 int STRING_ECHO_HELP1 ;
 int TRACE (char*,int ) ;
 int _T (char*) ;
 int _tcsncmp (int ,int ,int) ;
 int debugstr_aw (int ) ;

INT CommandEchos (LPTSTR param)
{
    TRACE ("CommandEchos: '%s'\n", debugstr_aw(param));

    if (!_tcsncmp (param, _T("/?"), 2))
    {
        ConOutResPuts(STRING_ECHO_HELP1);
        return 0;
    }

    ConOutPrintf (_T("%s"), param);
    return 0;
}
