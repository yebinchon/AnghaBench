
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Rows ;
 scalar_t__ info_message ;
 int mch_errmsg (char*) ;
 int mch_msg (char*) ;
 int msg_clr_eos_force () ;
 scalar_t__ msg_didout ;
 scalar_t__ msg_use_printf () ;
 scalar_t__ newline_on_exit ;
 int out_char (char) ;
 int restore_cterm_colors () ;
 scalar_t__ silent_mode ;
 int windgoto (int,int ) ;

__attribute__((used)) static void
exit_scroll()
{
    if (silent_mode)
 return;
    if (newline_on_exit || msg_didout)
    {
 if (msg_use_printf())
 {
     if (info_message)
  mch_msg("\n");
     else
  mch_errmsg("\r\n");
 }
 else
     out_char('\n');
    }
    else
    {
 restore_cterm_colors();
 msg_clr_eos_force();
 windgoto((int)Rows - 1, 0);
    }
}
