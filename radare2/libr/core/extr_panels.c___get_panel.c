
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** panel; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;


 int PANEL_NUM_LIMIT ;

RPanel *__get_panel(RPanels *panels, int i) {
 if (!panels || (i >= PANEL_NUM_LIMIT)) {
  return ((void*)0);
 }
 return panels->panel[i];
}
