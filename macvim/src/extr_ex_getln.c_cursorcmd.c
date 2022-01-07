
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmdspos; } ;


 int Columns ;
 scalar_t__ Rows ;
 TYPE_1__ ccline ;
 scalar_t__ cmd_silent ;
 scalar_t__ cmdline_row ;
 scalar_t__ cmdmsg_rl ;
 int mch_update_cursor () ;
 int msg_col ;
 scalar_t__ msg_row ;
 int redrawcmd_preedit () ;
 int windgoto (scalar_t__,int) ;

__attribute__((used)) static void
cursorcmd()
{
    if (cmd_silent)
 return;
    {
 msg_row = cmdline_row + (ccline.cmdspos / (int)Columns);
 msg_col = ccline.cmdspos % (int)Columns;
 if (msg_row >= Rows)
     msg_row = Rows - 1;
    }

    windgoto(msg_row, msg_col);






}
