
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* panels; } ;
struct TYPE_5__ {scalar_t__ n_panels; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;


 scalar_t__ PANEL_NUM_LIMIT ;
 int __show_status (TYPE_2__*,char const*) ;

bool __check_panel_num(RCore *core) {
 RPanels *panels = core->panels;
 if (panels->n_panels + 1 > PANEL_NUM_LIMIT) {
  const char *msg = "panel limit exceeded.";
  (void)__show_status (core, msg);
  return 0;
 }
 return 1;
}
