
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TMODE_COOK ;
 int TRUE ;
 int exit (int) ;
 int mch_restore_cursor_shape (int ) ;
 int ml_close_all (int ) ;
 int out_char (char) ;
 int out_flush () ;
 int set_interrupts (int ) ;
 int set_sys_cursor () ;
 int settmode (int ) ;
 int stoptermcap () ;

void
mch_exit(int r)
{
    settmode(TMODE_COOK);
    stoptermcap();
    set_interrupts(FALSE);




    out_char('\r');
    out_char('\n');
    out_flush();
    ml_close_all(TRUE);



    exit(r);
}
