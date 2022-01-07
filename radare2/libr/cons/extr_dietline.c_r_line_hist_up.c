
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* cb_history_up ) (TYPE_1__*) ;} ;


 TYPE_1__ I ;
 int r_line_hist_cmd_down ;
 int r_line_hist_cmd_up ;
 int r_line_set_hist_callback (TYPE_1__*,int *,int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int r_line_hist_up() {
 if (!I.cb_history_up) {
  r_line_set_hist_callback (&I, &r_line_hist_cmd_up, &r_line_hist_cmd_down);
 }
 return I.cb_history_up (&I);
}
