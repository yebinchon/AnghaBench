
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_5__ {int MouseEvent; int KeyEvent; } ;
struct TYPE_6__ {scalar_t__ EventType; TYPE_1__ Event; } ;
typedef TYPE_2__ INPUT_RECORD ;
typedef int DWORD ;


 scalar_t__ FOCUS_EVENT ;
 scalar_t__ KEY_EVENT ;
 scalar_t__ MOUSE_EVENT ;
 int TRUE ;
 scalar_t__ WINDOW_BUFFER_SIZE_EVENT ;
 int WaitForChar (long) ;
 int create_conin () ;
 scalar_t__ decode_key_event (int *,int *,int *,int*,int ) ;
 scalar_t__ decode_mouse_event (int *) ;
 scalar_t__ did_create_conin ;
 int g_hConIn ;
 int g_nMouseClick ;
 int handle_focus_event (TYPE_2__) ;
 scalar_t__ input_available () ;
 scalar_t__ read_console_input (int ,TYPE_2__*,int,int *) ;
 int read_error_exit () ;
 int shell_resized () ;

__attribute__((used)) static char_u
tgetch(int *pmodifiers, char_u *pch2)
{
    char_u ch;

    for (;;)
    {
 INPUT_RECORD ir;
 DWORD cRecords = 0;
 if (read_console_input(g_hConIn, &ir, 1, &cRecords) == 0)
 {
     if (did_create_conin)
  read_error_exit();
     create_conin();
     continue;
 }

 if (ir.EventType == KEY_EVENT)
 {
     if (decode_key_event(&ir.Event.KeyEvent, &ch, pch2,
           pmodifiers, TRUE))
  return ch;
 }
 else if (ir.EventType == FOCUS_EVENT)
     handle_focus_event(ir);
 else if (ir.EventType == WINDOW_BUFFER_SIZE_EVENT)
     shell_resized();







    }
}
