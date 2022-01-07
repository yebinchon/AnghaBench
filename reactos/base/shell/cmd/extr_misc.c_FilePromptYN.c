
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int AsciiChar; } ;
struct TYPE_7__ {char wVirtualKeyCode; int dwControlKeyState; TYPE_1__ uChar; } ;
struct TYPE_8__ {TYPE_2__ KeyEvent; } ;
struct TYPE_9__ {TYPE_3__ Event; } ;
typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int INT ;


 int ARRAYSIZE (scalar_t__*) ;
 int AddBreakHandler () ;
 int CMD_ModuleHandle ;
 int ConInDisable () ;
 int ConInEnable () ;
 int ConInKey (TYPE_4__*) ;
 int ConInString (scalar_t__*,int) ;
 int ConOutChar (scalar_t__) ;
 int ConOutResPrintf (scalar_t__) ;
 int LEFT_CTRL_PRESSED ;
 int LoadString (int ,int ,scalar_t__*,int ) ;
 int PROMPT_BREAK ;
 int PROMPT_NO ;
 int PROMPT_YES ;
 int RC_STRING_MAX_SIZE ;
 int RIGHT_CTRL_PRESSED ;
 int RemoveBreakHandler () ;
 int STRING_CHOICE_OPTION ;
 char VK_CONTROL ;
 char VK_ESCAPE ;
 char VK_MENU ;
 char VK_SHIFT ;
 scalar_t__ _T (char) ;
 scalar_t__ _istspace (scalar_t__) ;
 int * _tcschr (int ,int ) ;
 scalar_t__ _tcsncmp (scalar_t__*,scalar_t__*,int) ;
 int _tcsupr (scalar_t__*) ;
 int * _totlower (int ) ;
 int * cKey ;
 TYPE_4__ ir ;
 int szKeys ;

INT FilePromptYN (UINT resID)
{
    TCHAR szMsg[RC_STRING_MAX_SIZE];



    TCHAR szIn[10];
    LPTSTR p;

    if (resID != 0)
        ConOutResPrintf (resID);


    ConInString(szIn, 10);
    ConOutChar(_T('\n'));

    _tcsupr (szIn);
    for (p = szIn; _istspace (*p); p++)
        ;

    LoadString(CMD_ModuleHandle, STRING_CHOICE_OPTION, szMsg, ARRAYSIZE(szMsg));

    if (_tcsncmp(p, &szMsg[0], 1) == 0)
        return PROMPT_YES;
    else if (_tcsncmp(p, &szMsg[1], 1) == 0)
        return PROMPT_NO;





    return PROMPT_NO;
}
