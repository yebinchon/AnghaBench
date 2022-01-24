#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  AsciiChar; } ;
struct TYPE_7__ {char wVirtualKeyCode; int dwControlKeyState; TYPE_1__ uChar; } ;
struct TYPE_8__ {TYPE_2__ KeyEvent; } ;
struct TYPE_9__ {TYPE_3__ Event; } ;
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CMD_ModuleHandle ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int LEFT_CTRL_PRESSED ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROMPT_BREAK ; 
 int /*<<< orphan*/  PROMPT_NO ; 
 int /*<<< orphan*/  PROMPT_YES ; 
 int RC_STRING_MAX_SIZE ; 
 int RIGHT_CTRL_PRESSED ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  STRING_CHOICE_OPTION ; 
 char VK_CONTROL ; 
 char VK_ESCAPE ; 
 char VK_MENU ; 
 char VK_SHIFT ; 
 scalar_t__ FUNC10 (char) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cKey ; 
 TYPE_4__ ir ; 
 int /*<<< orphan*/  szKeys ; 

INT FUNC16 (UINT resID)
{
    TCHAR szMsg[RC_STRING_MAX_SIZE];
//  TCHAR cKey = 0;
//  LPTSTR szKeys = _T("yna");

    TCHAR szIn[10];
    LPTSTR p;

    if (resID != 0)
        FUNC7 (resID);

    /* preliminary fix */
    FUNC5(szIn, 10);
    FUNC6(FUNC10('\n'));

    FUNC14 (szIn);
    for (p = szIn; FUNC11 (*p); p++)
        ;

    FUNC8(CMD_ModuleHandle, STRING_CHOICE_OPTION, szMsg, FUNC0(szMsg));

    if (FUNC13(p, &szMsg[0], 1) == 0)
        return PROMPT_YES;
    else if (FUNC13(p, &szMsg[1], 1) == 0)
        return PROMPT_NO;
#if 0
    else if (*p == _T('\03'))
        return PROMPT_BREAK;
#endif

    return PROMPT_NO;

    /* unfinished solution */
#if 0
    RemoveBreakHandler();
    ConInDisable();

    do
    {
        ConInKey (&ir);
        cKey = _totlower (ir.Event.KeyEvent.uChar.AsciiChar);
        if (_tcschr (szKeys, cKey[0]) == NULL)
            cKey = 0;


    }
    while ((ir.Event.KeyEvent.wVirtualKeyCode == VK_SHIFT) ||
           (ir.Event.KeyEvent.wVirtualKeyCode == VK_MENU) ||
           (ir.Event.KeyEvent.wVirtualKeyCode == VK_CONTROL));

    AddBreakHandler();
    ConInEnable();

    if ((ir.Event.KeyEvent.wVirtualKeyCode == VK_ESCAPE) ||
        ((ir.Event.KeyEvent.wVirtualKeyCode == 'C') &&
         (ir.Event.KeyEvent.dwControlKeyState & (LEFT_CTRL_PRESSED | RIGHT_CTRL_PRESSED))))
        return PROMPT_BREAK;

    return PROMPT_YES;
#endif
}