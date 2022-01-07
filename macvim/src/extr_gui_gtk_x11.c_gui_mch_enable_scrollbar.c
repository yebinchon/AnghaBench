
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * id; } ;
typedef TYPE_1__ scrollbar_T ;


 int gtk_widget_hide (int *) ;
 int gtk_widget_show (int *) ;
 int update_window_manager_hints (int ,int ) ;

void
gui_mch_enable_scrollbar(scrollbar_T *sb, int flag)
{
    if (sb->id == ((void*)0))
 return;

    if (flag)
 gtk_widget_show(sb->id);
    else
 gtk_widget_hide(sb->id);

    update_window_manager_hints(0, 0);
}
