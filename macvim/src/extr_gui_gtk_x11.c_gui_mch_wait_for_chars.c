
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int guint32 ;
typedef scalar_t__ guint ;
typedef scalar_t__ gint ;
struct TYPE_2__ {int in_focus; } ;


 int FAIL ;
 int FALSE ;
 int GDK_INPUT_READ ;
 int OK ;
 int TRUE ;
 int fd_from_sniff ;
 int g_main_context_iteration (int *,int ) ;
 scalar_t__ gdk_input_add (int ,int ,int ,int *) ;
 int gdk_input_remove (scalar_t__) ;
 scalar_t__ gtk_timeout_add (int ,int ,int*) ;
 int gtk_timeout_remove (scalar_t__) ;
 TYPE_1__ gui ;
 int gui_mch_start_blink () ;
 int gui_mch_stop_blink () ;
 int gui_mch_update () ;
 scalar_t__ input_available () ;
 int input_timer_cb ;
 int netbeans_parse_messages () ;
 int sniff_request_cb ;
 scalar_t__ want_sniff_request ;

int
gui_mch_wait_for_chars(long wtime)
{
    int focus;
    guint timer;
    static int timed_out;
    timed_out = FALSE;




    if (wtime > 0)
 timer = gtk_timeout_add((guint32)wtime, input_timer_cb, &timed_out);
    else
 timer = 0;

    focus = gui.in_focus;

    do
    {

 if (gui.in_focus != focus)
 {
     if (gui.in_focus)
  gui_mch_start_blink();
     else
  gui_mch_stop_blink();
     focus = gui.in_focus;
 }
 if (!input_available())
     g_main_context_iteration(((void*)0), TRUE);


 if (input_available())
 {
     if (timer != 0 && !timed_out)
  gtk_timeout_remove(timer);
     return OK;
 }
    } while (wtime < 0 || !timed_out);




    gui_mch_update();

    return FAIL;
}
