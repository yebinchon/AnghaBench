
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_2__ {int in_focus; } ;
typedef int TIMERPROC ;
typedef int MSG ;


 int FAIL ;
 void* FALSE ;
 int KillTimer (int *,scalar_t__) ;
 int OK ;
 int PM_REMOVE ;
 int SetActiveWindow (int ) ;
 int SetForegroundWindow (int ) ;
 scalar_t__ SetTimer (int *,int ,scalar_t__,int ) ;
 void* TRUE ;
 int WM_TIMER ;
 scalar_t__ _OnTimer ;
 void* allow_scrollbar ;
 TYPE_1__ gui ;
 int gui_mch_start_blink () ;
 int gui_mch_stop_blink () ;
 scalar_t__ input_available () ;
 int netbeans_parse_messages () ;
 scalar_t__ pPeekMessage (int *,int ,int ,int ,int ) ;
 int process_message () ;
 scalar_t__ s_busy_processing ;
 int s_button_pending ;
 int s_getting_focus ;
 int s_hwnd ;
 void* s_need_activate ;
 void* s_timed_out ;
 scalar_t__ s_wait_timer ;

int
gui_mch_wait_for_chars(int wtime)
{
    MSG msg;
    int focus;

    s_timed_out = FALSE;

    if (wtime > 0)
    {

 if (s_busy_processing)
     return FAIL;
 s_wait_timer = (UINT)SetTimer(((void*)0), 0, (UINT)wtime,
        (TIMERPROC)_OnTimer);
    }

    allow_scrollbar = TRUE;

    focus = gui.in_focus;
    while (!s_timed_out)
    {

 if (gui.in_focus != focus)
 {
     if (gui.in_focus)
  gui_mch_start_blink();
     else
  gui_mch_stop_blink();
     focus = gui.in_focus;
 }

 if (s_need_activate)
 {



     (void)SetActiveWindow(s_hwnd);

     s_need_activate = FALSE;
 }
 process_message();

 if (input_available())
 {
     if (s_wait_timer != 0 && !s_timed_out)
     {
  KillTimer(((void*)0), s_wait_timer);


  while (pPeekMessage(&msg, s_hwnd, WM_TIMER, WM_TIMER, PM_REMOVE))
      ;
  s_wait_timer = 0;
     }
     allow_scrollbar = FALSE;




     if (!s_getting_focus)
  s_button_pending = -1;

     return OK;
 }
    }
    allow_scrollbar = FALSE;
    return FAIL;
}
