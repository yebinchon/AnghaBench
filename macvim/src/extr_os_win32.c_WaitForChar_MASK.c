#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_12__ {scalar_t__ UnicodeChar; } ;
struct TYPE_16__ {int wVirtualKeyCode; TYPE_2__ uChar; scalar_t__ bKeyDown; } ;
struct TYPE_11__ {int Y; } ;
struct TYPE_15__ {TYPE_1__ dwCursorPosition; } ;
struct TYPE_13__ {int /*<<< orphan*/  MouseEvent; TYPE_9__ KeyEvent; } ;
struct TYPE_14__ {scalar_t__ EventType; TYPE_3__ Event; } ;
typedef  TYPE_4__ INPUT_RECORD ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_5__ CONSOLE_SCREEN_BUFFER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR ; 
 int CMDLINE ; 
 int FALSE ; 
 scalar_t__ FOCUS_EVENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ INFINITE ; 
 scalar_t__ KEY_EVENT ; 
 scalar_t__ MOUSE_EVENT ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QS_SENDMESSAGE ; 
 int Rows ; 
 int State ; 
 int TRUE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WINDOW_BUFFER_SIZE_EVENT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  cmdline_row ; 
 scalar_t__ FUNC4 (TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_hConIn ; 
 int /*<<< orphan*/  g_hConOut ; 
 int g_nMouseClick ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__) ; 
 scalar_t__ FUNC7 () ; 
 int msg_row ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 long p_mzq ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_4__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int
FUNC16(long msec)
{
    DWORD	    dwNow = 0, dwEndTime = 0;
    INPUT_RECORD    ir;
    DWORD	    cRecords;
    char_u	    ch, ch2;

    if (msec > 0)
	/* Wait until the specified time has elapsed. */
	dwEndTime = FUNC1() + msec;
    else if (msec < 0)
	/* Wait forever. */
	dwEndTime = INFINITE;

    /* We need to loop until the end of the time period, because
     * we might get multiple unusable mouse events in that time.
     */
    for (;;)
    {
#ifdef FEAT_MZSCHEME
	mzvim_check_threads();
#endif
#ifdef FEAT_CLIENTSERVER
	serverProcessPendingMessages();
#endif
	if (0
#ifdef FEAT_MOUSE
		|| g_nMouseClick != -1
#endif
#ifdef FEAT_CLIENTSERVER
		|| input_available()
#endif
	   )
	    return TRUE;

	if (msec > 0)
	{
	    /* If the specified wait time has passed, return.  Beware that
	     * GetTickCount() may wrap around (overflow). */
	    dwNow = FUNC1();
	    if ((int)(dwNow - dwEndTime) >= 0)
		break;
	}
	if (msec != 0)
	{
	    DWORD dwWaitTime = dwEndTime - dwNow;

#ifdef FEAT_MZSCHEME
	    if (mzthreads_allowed() && p_mzq > 0
				    && (msec < 0 || (long)dwWaitTime > p_mzq))
		dwWaitTime = p_mzq; /* don't wait longer than 'mzquantum' */
#endif
#ifdef FEAT_CLIENTSERVER
	    /* Wait for either an event on the console input or a message in
	     * the client-server window. */
	    if (MsgWaitForMultipleObjects(1, &g_hConIn, FALSE,
				 dwWaitTime, QS_SENDMESSAGE) != WAIT_OBJECT_0)
#else
	    if (FUNC3(g_hConIn, dwWaitTime) != WAIT_OBJECT_0)
#endif
		    continue;
	}

	cRecords = 0;
	FUNC10(g_hConIn, &ir, 1, &cRecords);

#ifdef FEAT_MBYTE_IME
	if (State & CMDLINE && msg_row == Rows - 1)
	{
	    CONSOLE_SCREEN_BUFFER_INFO csbi;

	    if (GetConsoleScreenBufferInfo(g_hConOut, &csbi))
	    {
		if (csbi.dwCursorPosition.Y != msg_row)
		{
		    /* The screen is now messed up, must redraw the
		     * command line and later all the windows. */
		    redraw_all_later(CLEAR);
		    cmdline_row -= (msg_row - csbi.dwCursorPosition.Y);
		    redrawcmd();
		}
	    }
	}
#endif

	if (cRecords > 0)
	{
	    if (ir.EventType == KEY_EVENT && ir.Event.KeyEvent.bKeyDown)
	    {
#ifdef FEAT_MBYTE_IME
		/* Windows IME sends two '\n's with only one 'ENTER'.  First:
		 * wVirtualKeyCode == 13. second: wVirtualKeyCode == 0 */
		if (ir.Event.KeyEvent.uChar.UnicodeChar == 0
			&& ir.Event.KeyEvent.wVirtualKeyCode == 13)
		{
		    read_console_input(g_hConIn, &ir, 1, &cRecords);
		    continue;
		}
#endif
		if (FUNC4(&ir.Event.KeyEvent, &ch, &ch2,
								 NULL, FALSE))
		    return TRUE;
	    }

	    FUNC11(g_hConIn, &ir, 1, &cRecords);

	    if (ir.EventType == FOCUS_EVENT)
		FUNC6(ir);
	    else if (ir.EventType == WINDOW_BUFFER_SIZE_EVENT)
		FUNC15();
#ifdef FEAT_MOUSE
	    else if (ir.EventType == MOUSE_EVENT
		    && decode_mouse_event(&ir.Event.MouseEvent))
		return TRUE;
#endif
	}
	else if (msec == 0)
	    break;
    }

#ifdef FEAT_CLIENTSERVER
    /* Something might have been received while we were waiting. */
    if (input_available())
	return TRUE;
#endif
    return FALSE;
}