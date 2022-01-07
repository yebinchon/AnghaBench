
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int log; } ;
typedef TYPE_1__ RCore ;


 char* expr2cmd (int ,char const*) ;
 int free (char*) ;
 int r_cons_printf (char*,char*) ;
 int r_core_cmd (TYPE_1__*,char*,int ) ;

__attribute__((used)) static int log_callback_r2 (RCore *core, int count, const char *line) {
 if (*line == ':') {
  char *cmd = expr2cmd (core->log, line);
  if (cmd) {
   r_cons_printf ("%s\n", cmd);
   r_core_cmd (core, cmd, 0);
   free (cmd);
  }
 }
 return 0;
}
