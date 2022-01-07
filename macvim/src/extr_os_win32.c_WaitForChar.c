
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_12__ {scalar_t__ UnicodeChar; } ;
struct TYPE_16__ {int wVirtualKeyCode; TYPE_2__ uChar; scalar_t__ bKeyDown; } ;
struct TYPE_11__ {int Y; } ;
struct TYPE_15__ {TYPE_1__ dwCursorPosition; } ;
struct TYPE_13__ {int MouseEvent; TYPE_9__ KeyEvent; } ;
struct TYPE_14__ {scalar_t__ EventType; TYPE_3__ Event; } ;
typedef TYPE_4__ INPUT_RECORD ;
typedef scalar_t__ DWORD ;
typedef TYPE_5__ CONSOLE_SCREEN_BUFFER_INFO ;


 int CLEAR ;
 int CMDLINE ;
 int FALSE ;
 scalar_t__ FOCUS_EVENT ;
 scalar_t__ GetConsoleScreenBufferInfo (int ,TYPE_5__*) ;
 scalar_t__ GetTickCount () ;
 scalar_t__ INFINITE ;
 scalar_t__ KEY_EVENT ;
 scalar_t__ MOUSE_EVENT ;
 scalar_t__ MsgWaitForMultipleObjects (int,int *,int,scalar_t__,int ) ;
 int QS_SENDMESSAGE ;
 int Rows ;
 int State ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WINDOW_BUFFER_SIZE_EVENT ;
 scalar_t__ WaitForSingleObject (int ,scalar_t__) ;
 int cmdline_row ;
 scalar_t__ decode_key_event (TYPE_9__*,int *,int *,int *,int) ;
 scalar_t__ decode_mouse_event (int *) ;
 int g_hConIn ;
 int g_hConOut ;
 int g_nMouseClick ;
 int handle_focus_event (TYPE_4__) ;
 scalar_t__ input_available () ;
 int msg_row ;
 scalar_t__ mzthreads_allowed () ;
 int mzvim_check_threads () ;
 long p_mzq ;
 int peek_console_input (int ,TYPE_4__*,int,scalar_t__*) ;
 int read_console_input (int ,TYPE_4__*,int,scalar_t__*) ;
 int redraw_all_later (int ) ;
 int redrawcmd () ;
 int serverProcessPendingMessages () ;
 int shell_resized () ;

__attribute__((used)) static int
WaitForChar(long msec)
{
    DWORD dwNow = 0, dwEndTime = 0;
    INPUT_RECORD ir;
    DWORD cRecords;
    char_u ch, ch2;

    if (msec > 0)

 dwEndTime = GetTickCount() + msec;
    else if (msec < 0)

 dwEndTime = INFINITE;




    for (;;)
    {






 if (0






    )
     return TRUE;

 if (msec > 0)
 {


     dwNow = GetTickCount();
     if ((int)(dwNow - dwEndTime) >= 0)
  break;
 }
 if (msec != 0)
 {
     DWORD dwWaitTime = dwEndTime - dwNow;
     if (WaitForSingleObject(g_hConIn, dwWaitTime) != WAIT_OBJECT_0)

      continue;
 }

 cRecords = 0;
 peek_console_input(g_hConIn, &ir, 1, &cRecords);
 if (cRecords > 0)
 {
     if (ir.EventType == KEY_EVENT && ir.Event.KeyEvent.bKeyDown)
     {
  if (decode_key_event(&ir.Event.KeyEvent, &ch, &ch2,
         ((void*)0), FALSE))
      return TRUE;
     }

     read_console_input(g_hConIn, &ir, 1, &cRecords);

     if (ir.EventType == FOCUS_EVENT)
  handle_focus_event(ir);
     else if (ir.EventType == WINDOW_BUFFER_SIZE_EVENT)
  shell_resized();





 }
 else if (msec == 0)
     break;
    }






    return FALSE;
}
