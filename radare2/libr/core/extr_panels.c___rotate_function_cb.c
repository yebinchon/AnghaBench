
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int COUNT (int ) ;
 int __rotate_panel_cmds (int *,int ,int ,char*,int) ;
 int function_rotate ;

void __rotate_function_cb (void *user, bool rev) {
 RCore *core = (RCore *)user;
 __rotate_panel_cmds (core, function_rotate, COUNT (function_rotate), "af", rev);
}
