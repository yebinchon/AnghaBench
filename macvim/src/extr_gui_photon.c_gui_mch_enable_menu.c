
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vimMenuBar; } ;


 int PtRealizeWidget (int ) ;
 int PtUnrealizeWidget (int ) ;
 TYPE_1__ gui ;

void
gui_mch_enable_menu(int flag)
{
    if (flag != 0)
 PtRealizeWidget(gui.vimMenuBar);
    else
 PtUnrealizeWidget(gui.vimMenuBar);
}
