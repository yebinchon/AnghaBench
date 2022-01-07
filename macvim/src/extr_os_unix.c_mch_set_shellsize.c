
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Columns ;
 scalar_t__ Rows ;
 scalar_t__* T_CWS ;
 int out_flush () ;
 int screen_start () ;
 int term_set_winsize (int,int) ;

void
mch_set_shellsize()
{
    if (*T_CWS)
    {





 term_set_winsize((int)Rows, (int)Columns);
 out_flush();
 screen_start();
    }
}
