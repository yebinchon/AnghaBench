
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ RCore ;


 int r_core_visual_asm (TYPE_1__*,int ) ;

int __assemble_cb(void *user) {
 RCore *core = (RCore *)user;
 r_core_visual_asm (core, core->offset);
 return 0;
}
