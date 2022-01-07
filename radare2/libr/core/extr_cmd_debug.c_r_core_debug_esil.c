
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_5__ {int num; int dbg; int config; } ;
typedef TYPE_1__ RCore ;


 int R_PERM_R ;
 int R_PERM_W ;
 int R_PERM_X ;
 int eprintf (char*) ;
 int free (char*) ;
 char const** help_msg_de ;
 char const** help_msg_des ;
 int r_config_get_i (int ,char*) ;
 int r_cons_printf (char*) ;
 int r_core_cmd0 (TYPE_1__*,char*) ;
 int r_core_cmd_help (TYPE_1__*,char const**) ;
 int r_debug_esil_continue (int ) ;
 int r_debug_esil_prestep (int ,int ) ;
 int r_debug_esil_step (int ,int) ;
 int r_debug_esil_watch (int ,int,int,char*) ;
 int r_debug_esil_watch_empty (int ) ;
 int r_debug_esil_watch_list (int ) ;
 int r_debug_esil_watch_reset (int ) ;
 int r_debug_reg_get (int ,char*) ;
 int r_num_math (int ,char const*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void r_core_debug_esil (RCore *core, const char *input) {
 switch (input[0]) {
 case '\0':

  r_debug_esil_watch_list (core->dbg);
  break;
 case ' ':
  {
   char *line = strdup (input + 1);
   char *p, *q;
   int done = 0;
   int perm = 0, dev = 0;
   p = strchr (line, ' ');
   if (p) {
    *p++ = 0;
    if (strchr (line, 'r')) perm |= R_PERM_R;
    if (strchr (line, 'w')) perm |= R_PERM_W;
    if (strchr (line, 'x')) perm |= R_PERM_X;
    q = strchr (p, ' ');
    if (q) {
     *q++ = 0;
     dev = p[0];
     if (q) {
      r_debug_esil_watch (core->dbg, perm, dev, q);
      done = 1;
     }
    }
   }
   if (!done) {
    const char *help_de_msg[] = {
     "Usage:", "de", " [perm] [reg|mem] [expr]",
     ((void*)0)
    };
    r_core_cmd_help (core, help_de_msg);
   }
   free (line);
  }
  break;
 case '-':
  r_debug_esil_watch_reset (core->dbg);
  break;
 case 'c':
  if (r_debug_esil_watch_empty (core->dbg)) {
   eprintf ("Error: no esil watchpoints defined\n");
  } else {
   r_core_cmd0 (core, "aei");
   r_debug_esil_prestep (core->dbg, r_config_get_i (core->config, "esil.prestep"));
   r_debug_esil_continue (core->dbg);
  }
  break;
 case 's':
  if (input[1] == 'u' && input[2] == ' ') {
   ut64 addr, naddr, fin = r_num_math (core->num, input + 2);
   r_core_cmd0 (core, "aei");
   addr = r_debug_reg_get (core->dbg, "PC");
   while (addr != fin) {
    r_debug_esil_prestep (core->dbg, r_config_get_i (
       core->config, "esil.prestep"));
    r_debug_esil_step (core->dbg, 1);
    naddr = r_debug_reg_get (core->dbg, "PC");
    if (naddr == addr) {
     eprintf ("Detected loophole\n");
     break;
    }
    addr = naddr;
   }
  } else if (input[1] == '?' || !input[1]) {
   r_core_cmd_help (core, help_msg_des);
  } else {
   r_core_cmd0 (core, "aei");
   r_debug_esil_prestep (core->dbg, r_config_get_i (core->config, "esil.prestep"));

   r_debug_esil_step (core->dbg, r_num_math (core->num, input + 1));
  }
  break;
 case '?':
 default:
  {
   r_core_cmd_help (core, help_msg_de);

   r_cons_printf ("Examples:\n"
     " de r r rip       # stop when reads rip\n"
     " de rw m ADDR     # stop when read or write in ADDR\n"
     " de w r rdx       # stop when rdx register is modified\n"
     " de x m FROM..TO  # stop when rip in range\n");
  }
  break;
 }
}
