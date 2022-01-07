
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lnum; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; int w_wcol; } ;


 int FALSE ;
 scalar_t__ PC_STATUS_LEFT ;
 scalar_t__ PC_STATUS_RIGHT ;
 scalar_t__ PC_STATUS_UNSET ;
 TYPE_2__* curwin ;
 scalar_t__ msg_scrolled ;
 int pc_attr ;
 int pc_bytes ;
 int pc_col ;
 scalar_t__ pc_row ;
 scalar_t__ pc_status ;
 int redrawWinline (int ,int ) ;
 int screen_puts (int ,scalar_t__,int ,int ) ;

void
edit_unputchar()
{
    if (pc_status != PC_STATUS_UNSET && pc_row >= msg_scrolled)
    {







     screen_puts(pc_bytes, pc_row - msg_scrolled, pc_col, pc_attr);
    }
}
