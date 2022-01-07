
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int curnode; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;


 int * __get_panel (TYPE_1__*,int ) ;

RPanel *__get_cur_panel(RPanels *panels) {
 return __get_panel (panels, panels->curnode);
}
