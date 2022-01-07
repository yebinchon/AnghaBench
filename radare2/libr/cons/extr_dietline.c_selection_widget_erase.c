
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sel_widget; } ;
struct TYPE_7__ {int user; int (* cb_task_oneshot ) (int ,int ,int *) ;scalar_t__ event_data; int (* event_resize ) (scalar_t__) ;} ;
struct TYPE_6__ {int selection; scalar_t__ options_len; } ;
typedef TYPE_1__ RSelWidget ;
typedef TYPE_2__ RCons ;


 TYPE_5__ I ;
 char* R_CONS_CLEAR_FROM_CURSOR_TO_END ;
 int R_FREE (TYPE_1__*) ;
 int print_rline_task ;
 int printf (char*,char*) ;
 TYPE_2__* r_cons_singleton () ;
 int selection_widget_draw () ;
 int stub1 (scalar_t__) ;
 int stub2 (int ,int ,int *) ;

__attribute__((used)) static void selection_widget_erase() {
 RSelWidget *sel_widget = I.sel_widget;
 if (sel_widget) {
  sel_widget->options_len = 0;
  sel_widget->selection = -1;
  selection_widget_draw ();
  R_FREE (I.sel_widget);
  RCons *cons = r_cons_singleton ();
  if (cons->event_resize && cons->event_data) {
   cons->event_resize (cons->event_data);
   cons->cb_task_oneshot (cons->user, print_rline_task, ((void*)0));
  }
  printf ("%s", R_CONS_CLEAR_FROM_CURSOR_TO_END);
 }
}
