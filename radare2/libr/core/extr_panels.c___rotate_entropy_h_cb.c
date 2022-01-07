
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int COUNT (int ) ;
 int __rotate_panel_cmds (int *,int ,int ,char*,int) ;
 int entropy_rotate ;

void __rotate_entropy_h_cb(void *user, bool rev) {
 RCore *core = (RCore *)user;
 __rotate_panel_cmds (core, entropy_rotate, COUNT (entropy_rotate), "p==", rev);
}
