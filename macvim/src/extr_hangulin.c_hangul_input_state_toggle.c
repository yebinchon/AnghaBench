
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ composing_hangul ;
 int composing_hangul_buffer ;
 int gui_update_cursor (int ,int ) ;
 scalar_t__ hangul_input_state_get () ;
 int hangul_input_state_set (int) ;
 int out_flush () ;
 int push_raw_key (int ,int) ;
 int setcursor () ;
 scalar_t__ showmode () ;

void
hangul_input_state_toggle()
{
    if (hangul_input_state_get())
    {
 hangul_input_state_set(0);
 if (composing_hangul)
 {
     push_raw_key(composing_hangul_buffer, 2);
     composing_hangul = 0;
 }
    }
    else
 hangul_input_state_set(1);

    if (showmode())
    {
 setcursor();
 out_flush();
    }

    gui_update_cursor(TRUE, FALSE);
}
