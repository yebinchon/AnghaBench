
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tp_ch_used; } ;


 int FALSE ;
 scalar_t__ ROWS_AVAIL ;
 int TRUE ;
 int compute_cmdrow () ;
 TYPE_1__* curtab ;
 int curwin ;
 int * firstwin ;
 int frame_check_height (int ,int) ;
 int frame_minheight (int ,int *) ;
 int frame_new_height (int ,int,int ,int ) ;
 int p_ch ;
 scalar_t__ p_ea ;
 int topframe ;
 int win_comp_pos () ;
 int win_equal (int ,int ,char) ;
 int win_new_height (int *,int) ;

void
shell_new_rows()
{
    int h = (int)ROWS_AVAIL;

    if (firstwin == ((void*)0))
 return;
    if (h < 1)
 h = 1;
    win_new_height(firstwin, h);

    compute_cmdrow();
}
