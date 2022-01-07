
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int INT ;


 int ConOutResPaging (int ,int ) ;
 int ConRingBell (int ) ;
 int ConStreamGetOSHandle (int ) ;
 int STRING_BEEP_HELP ;
 int StdOut ;
 int TRUE ;
 int _T (char*) ;
 scalar_t__ _tcsncmp (int ,int ,int) ;
 int * bc ;

INT cmd_beep(LPTSTR param)
{
    if (_tcsncmp(param, _T("/?"), 2) == 0)
    {
        ConOutResPaging(TRUE, STRING_BEEP_HELP);
        return 0;
    }







    ConRingBell(ConStreamGetOSHandle(StdOut));
    return 0;
}
