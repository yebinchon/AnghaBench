
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_cons_any_key (int *) ;
 int r_cons_clear00 () ;
 int r_cons_flush () ;
 int r_cons_printf (char*) ;

__attribute__((used)) static void r_core_visual_debugtraces_help(RCore *core) {
 r_cons_clear00 ();
 r_cons_printf (
   "vbd: Visual Browse Debugtraces:\n\n"
   " q     - quit the bit editor\n"
   " Q     - Quit (jump into the disasm view)\n"
   " j/k   - Select next/previous trace\n"
   " :     - enter command\n");
 r_cons_flush ();
 r_cons_any_key (((void*)0));
}
