
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
typedef TYPE_1__ RCore ;


 char* r_config_get (int ,char*) ;
 int r_cons_flush () ;
 int r_core_cmd0 (TYPE_1__*,char const*) ;

__attribute__((used)) static void r_core_debug_syscall_hit(RCore *core) {
 const char *cmdhit = r_config_get (core->config, "cmd.onsyscall");

 if (cmdhit && cmdhit[0] != 0) {
  r_core_cmd0 (core, cmdhit);
  r_cons_flush ();
 }
}
