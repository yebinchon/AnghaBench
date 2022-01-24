#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int WPARAM ;

/* Variables and functions */
#define  CMD_COPY 150 
#define  CMD_CUT 149 
#define  CMD_DELETE 148 
#define  CMD_EXIT 147 
#define  CMD_FONT 146 
#define  CMD_GOTO 145 
#define  CMD_HELP_ABOUT_NOTEPAD 144 
#define  CMD_HELP_CONTENTS 143 
#define  CMD_NEW 142 
#define  CMD_OPEN 141 
#define  CMD_PAGE_SETUP 140 
#define  CMD_PASTE 139 
#define  CMD_PRINT 138 
#define  CMD_REPLACE 137 
#define  CMD_SAVE 136 
#define  CMD_SAVE_AS 135 
#define  CMD_SEARCH 134 
#define  CMD_SEARCH_NEXT 133 
#define  CMD_SELECT_ALL 132 
#define  CMD_STATUSBAR 131 
#define  CMD_TIME_DATE 130 
#define  CMD_UNDO 129 
#define  CMD_WRAP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 

__attribute__((used)) static int FUNC23(WPARAM wParam)
{
    switch (wParam)
    {
    case CMD_NEW:        FUNC9(); break;
    case CMD_OPEN:       FUNC10(); break;
    case CMD_SAVE:       FUNC13(); break;
    case CMD_SAVE_AS:    FUNC14(); break;
    case CMD_PRINT:      FUNC12(); break;
    case CMD_PAGE_SETUP: FUNC11(); break;
    case CMD_EXIT:       FUNC8(); break;

    case CMD_UNDO:       FUNC6(); break;
    case CMD_CUT:        FUNC1(); break;
    case CMD_COPY:       FUNC0(); break;
    case CMD_PASTE:      FUNC3(); break;
    case CMD_DELETE:     FUNC2(); break;
    case CMD_SELECT_ALL: FUNC4(); break;
    case CMD_TIME_DATE:  FUNC5(); break;

    case CMD_SEARCH:      FUNC19(); break;
    case CMD_SEARCH_NEXT: FUNC20(); break;
    case CMD_REPLACE:     FUNC18(); break;
    case CMD_GOTO:        FUNC15(); break;

    case CMD_WRAP: FUNC7(); break;
    case CMD_FONT: FUNC21(); break;

    case CMD_STATUSBAR: FUNC22(); break;

    case CMD_HELP_CONTENTS: FUNC17(); break;
    case CMD_HELP_ABOUT_NOTEPAD: FUNC16(); break;

    default:
        break;
    }
    return 0;
}