
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num; } ;
typedef TYPE_1__ RCore ;


 int __esil_step_to (TYPE_1__*,int ) ;
 int __set_refresh_all (TYPE_1__*,int,int) ;
 char* __show_status_input (TYPE_1__*,char*) ;
 int r_num_math (int ,char*) ;

int __esil_step_to_cb(void *user) {
 RCore *core = (RCore *)user;
 char *end = __show_status_input (core, "target addr: ");
 __esil_step_to (core, r_num_math (core->num, end));
 __set_refresh_all (core, 0, 0);
 return 0;
}
