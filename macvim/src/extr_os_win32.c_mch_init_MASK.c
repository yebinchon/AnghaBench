#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_6__ {int wAttributes; } ;
struct TYPE_8__ {TYPE_1__ Info; } ;
struct TYPE_7__ {int wAttributes; } ;
typedef  scalar_t__ PFNGCKLN ;
typedef  TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int O_BINARY ; 
 int /*<<< orphan*/  SEM_FAILCRITICALERRORS ; 
 int /*<<< orphan*/  SET_INVALID_PARAM_HANDLER ; 
 int /*<<< orphan*/  SM_MOUSEPRESENT ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int cterm_normal_bg_color ; 
 int cterm_normal_fg_color ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ fdDump ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int g_attrCurrent ; 
 int g_attrDefault ; 
 TYPE_3__ g_cbOrig ; 
 int /*<<< orphan*/  g_cci ; 
 int /*<<< orphan*/  g_cmodein ; 
 int /*<<< orphan*/  g_cmodeout ; 
 scalar_t__ g_fCanChangeIcon ; 
 int /*<<< orphan*/  g_fMouseAvail ; 
 int /*<<< orphan*/  g_fWindInitCalled ; 
 int /*<<< orphan*/  g_hConIn ; 
 int /*<<< orphan*/  g_hConOut ; 
 int /*<<< orphan*/  g_hVimIcon ; 
 int /*<<< orphan*/  g_hWnd ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ read_cmd_fd ; 
 scalar_t__ s_pfnGetConsoleKeyboardLayoutName ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 () ; 

void
FUNC21(void)
{
#ifndef FEAT_RESTORE_ORIG_SCREEN
    CONSOLE_SCREEN_BUFFER_INFO csbi;
#endif
#ifndef __MINGW32__
    extern int _fmode;
#endif

    /* Silently handle invalid parameters to CRT functions */
    SET_INVALID_PARAM_HANDLER;

    /* Let critical errors result in a failure, not in a dialog box.  Required
     * for the timestamp test to work on removed floppies. */
    FUNC10(SEM_FAILCRITICALERRORS);

    _fmode = O_BINARY;		/* we do our own CR-LF translation */
    FUNC16();

    /* Obtain handles for the standard Console I/O devices */
    if (read_cmd_fd == 0)
	g_hConIn =  FUNC5(STD_INPUT_HANDLE);
    else
	FUNC11();
    g_hConOut = FUNC5(STD_OUTPUT_HANDLE);

#ifdef FEAT_RESTORE_ORIG_SCREEN
    /* Save the initial console buffer for later restoration */
    SaveConsoleBuffer(&g_cbOrig);
    g_attrCurrent = g_attrDefault = g_cbOrig.Info.wAttributes;
#else
    /* Get current text attributes */
    FUNC2(g_hConOut, &csbi);
    g_attrCurrent = g_attrDefault = csbi.wAttributes;
#endif
    if (cterm_normal_fg_color == 0)
	cterm_normal_fg_color = (g_attrCurrent & 0xf) + 1;
    if (cterm_normal_bg_color == 0)
	cterm_normal_bg_color = ((g_attrCurrent >> 4) & 0xf) + 1;

    /* set termcap codes to current text attributes */
    FUNC19(g_attrCurrent);

    FUNC0(g_hConOut, &g_cci);
    FUNC1(g_hConIn,  &g_cmodein);
    FUNC1(g_hConOut, &g_cmodeout);

#ifdef FEAT_TITLE
    SaveConsoleTitleAndIcon();
    /*
     * Set both the small and big icons of the console window to Vim's icon.
     * Note that Vim presently only has one size of icon (32x32), but it
     * automatically gets scaled down to 16x16 when setting the small icon.
     */
    if (g_fCanChangeIcon)
	SetConsoleIcon(g_hWnd, g_hVimIcon, g_hVimIcon);
#endif

    FUNC18();

#ifdef MCH_WRITE_DUMP
    fdDump = fopen("dump", "wt");

    if (fdDump)
    {
	time_t t;

	time(&t);
	fputs(ctime(&t), fdDump);
	fflush(fdDump);
    }
#endif

    g_fWindInitCalled = TRUE;

#ifdef FEAT_MOUSE
    g_fMouseAvail = GetSystemMetrics(SM_MOUSEPRESENT);
#endif

#ifdef FEAT_CLIPBOARD
    win_clip_init();
#endif

    /* This will be NULL on anything but NT 4.0 */
    s_pfnGetConsoleKeyboardLayoutName =
	(PFNGCKLN) FUNC4(FUNC3("kernel32.dll"),
				  "GetConsoleKeyboardLayoutNameA");
}