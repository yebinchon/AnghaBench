
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef scalar_t__ BOOL ;


 int BREAK_INPUT ;
 int CMDLINE_LENGTH ;
 scalar_t__ CheckCtrlBreak (int ) ;
 int ConOutChar (scalar_t__) ;
 int ConOutResPrintf (int ) ;
 scalar_t__ FALSE ;
 int PrintPrompt () ;
 scalar_t__* ReadBatchLine () ;
 int ReadCommand (scalar_t__*,int) ;
 int STRING_MORE ;
 scalar_t__ SubstituteVars (scalar_t__*,scalar_t__*,scalar_t__) ;
 int TRUE ;
 scalar_t__ _T (char) ;
 scalar_t__ bEcho ;
 int bExit ;
 int bIgnoreEcho ;
 int * bc ;

BOOL
ReadLine(TCHAR *commandline, BOOL bMore)
{
    TCHAR readline[CMDLINE_LENGTH];
    LPTSTR ip;


    if (bc == ((void*)0))
    {
        if (bMore)
        {
            ConOutResPrintf(STRING_MORE);
        }
        else
        {

            if (bEcho)
            {
                if (!bIgnoreEcho)
                    ConOutChar(_T('\n'));
                PrintPrompt();
            }
        }

        if (!ReadCommand(readline, CMDLINE_LENGTH - 1))
        {
            bExit = TRUE;
            return FALSE;
        }

        if (readline[0] == _T('\0'))
            ConOutChar(_T('\n'));

        if (CheckCtrlBreak(BREAK_INPUT))
            return FALSE;

        if (readline[0] == _T('\0'))
            return FALSE;

        ip = readline;
    }
    else
    {
        ip = ReadBatchLine();
        if (!ip)
            return FALSE;
    }

    return SubstituteVars(ip, commandline, _T('%'));
}
