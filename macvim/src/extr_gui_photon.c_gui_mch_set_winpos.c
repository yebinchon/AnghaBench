
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vimWindow; } ;
struct TYPE_4__ {int member_0; int member_1; } ;
typedef TYPE_1__ PhPoint_t ;


 int PtSetResource (int ,int ,TYPE_1__*,int ) ;
 int Pt_ARG_POS ;
 TYPE_2__ gui ;

void
gui_mch_set_winpos(int x, int y)
{
    PhPoint_t pos = { x, y };

    PtSetResource(gui.vimWindow, Pt_ARG_POS, &pos, 0);
}
