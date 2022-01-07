
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {int break_loop; int dbg; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int r_cons_break_pop () ;
 int r_cons_break_push (int *,int *) ;
 scalar_t__ r_cons_is_breaked () ;
 scalar_t__ r_debug_is_dead (int ) ;
 scalar_t__ r_debug_reg_get (int ,char*) ;
 int r_debug_step (int ,int) ;

__attribute__((used)) static int step_until(RCore *core, ut64 addr) {
 ut64 off = r_debug_reg_get (core->dbg, "PC");
 if (!off) {
  eprintf ("Cannot 'drn PC'\n");
  return 0;
 }
 if (!addr) {
  eprintf ("Cannot continue until address 0\n");
  return 0;
 }
 r_cons_break_push (((void*)0), ((void*)0));
 do {
  if (r_cons_is_breaked ()) {
   core->break_loop = 1;
   break;
  }
  if (r_debug_is_dead (core->dbg)) {
   core->break_loop = 1;
   break;
  }
  r_debug_step (core->dbg, 1);
  off = r_debug_reg_get (core->dbg, "PC");

 } while (off != addr);
 r_cons_break_pop ();
 return 1;
}
