
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int __panel_single_step_in (int *) ;
 int __update_disassembly_or_open (int *) ;

int __step_cb(void *user) {
 RCore *core = (RCore *)user;
 __panel_single_step_in (core);
 __update_disassembly_or_open (core);
 return 0;
}
