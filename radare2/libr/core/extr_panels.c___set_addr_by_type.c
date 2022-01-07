
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {TYPE_1__* panels; } ;
struct TYPE_6__ {int n_panels; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;
typedef TYPE_2__ RCore ;


 int __check_panel_type (int *,char const*) ;
 int * __get_panel (TYPE_1__*,int) ;
 int __set_panel_addr (TYPE_2__*,int *,int ) ;

void __set_addr_by_type(RCore *core, const char *cmd, ut64 addr) {
 RPanels *panels = core->panels;
 int i;
 for (i = 0; i < panels->n_panels; i++) {
  RPanel *p = __get_panel (panels, i);
  if (!__check_panel_type (p, cmd)) {
   continue;
  }
  __set_panel_addr (core, p, addr);
 }
}
