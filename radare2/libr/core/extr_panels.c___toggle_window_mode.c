
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* panels; } ;
struct TYPE_5__ {scalar_t__ mode; scalar_t__ prevMode; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;


 scalar_t__ PANEL_MODE_DEFAULT ;
 scalar_t__ PANEL_MODE_WINDOW ;
 int __set_mode (TYPE_2__*,scalar_t__) ;

void __toggle_window_mode(RCore *core) {
 RPanels *panels = core->panels;
 if (panels->mode != PANEL_MODE_WINDOW) {
  panels->prevMode = panels->mode;
  __set_mode (core, PANEL_MODE_WINDOW);
 } else {
  __set_mode (core, panels->prevMode);
  panels->prevMode = PANEL_MODE_DEFAULT;
 }
}
