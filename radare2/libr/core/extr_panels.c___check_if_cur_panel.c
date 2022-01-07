
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int panels; } ;
typedef int RPanel ;
typedef TYPE_1__ RCore ;


 int * __get_cur_panel (int ) ;

bool __check_if_cur_panel(RCore *core, RPanel *panel) {
 return __get_cur_panel (core->panels) == panel;
}
