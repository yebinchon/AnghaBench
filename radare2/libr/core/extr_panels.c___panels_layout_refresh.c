
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int panels; } ;
typedef TYPE_1__ RCore ;


 int __check_edge (int ) ;
 int __del_invalid_panels (TYPE_1__*) ;
 int __panels_check_stackbase (TYPE_1__*) ;
 int __panels_refresh (TYPE_1__*) ;

void __panels_layout_refresh(RCore *core) {
 __del_invalid_panels (core);
 __check_edge (core->panels);
 __panels_check_stackbase (core);
 __panels_refresh (core);
}
