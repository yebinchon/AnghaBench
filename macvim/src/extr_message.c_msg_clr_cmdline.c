
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdline_row ;
 int msg_clr_eos_force () ;
 scalar_t__ msg_col ;
 int msg_row ;

void
msg_clr_cmdline()
{
    msg_row = cmdline_row;
    msg_col = 0;
    msg_clr_eos_force();
}
