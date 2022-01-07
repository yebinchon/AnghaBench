
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* panels; } ;
struct TYPE_6__ {int mode; } ;
typedef int RPanelsMode ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;


 int __set_cursor (TYPE_2__*,int) ;
 int __update_help (TYPE_1__*) ;

void __set_mode(RCore *core, RPanelsMode mode) {
 RPanels *panels = core->panels;
 __set_cursor (core, 0);
 panels->mode = mode;
 __update_help (panels);
}
