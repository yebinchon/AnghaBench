
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vmode; } ;
typedef TYPE_1__ RCore ;


 int r_core_visual_prompt_input (TYPE_1__*) ;

int __r2_shell_cb(void *user) {
 RCore *core = (RCore *)user;
 core->vmode = 0;
 r_core_visual_prompt_input (core);
 core->vmode = 1;
 return 0;
}
