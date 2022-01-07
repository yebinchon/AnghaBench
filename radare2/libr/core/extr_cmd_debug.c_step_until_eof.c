
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {int dbg; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int r_cons_break_pop () ;
 int r_cons_break_push (int *,int *) ;
 scalar_t__ r_debug_reg_get (int ,char*) ;
 int r_debug_step_over (int ,int) ;

__attribute__((used)) static int step_until_eof(RCore *core) {
 int maxLoops = 200000;
 ut64 off, now = r_debug_reg_get (core->dbg, "SP");
 r_cons_break_push (((void*)0), ((void*)0));
 do {

  r_debug_step_over (core->dbg, 1);
  off = r_debug_reg_get (core->dbg, "SP");

  if (--maxLoops < 0) {
   eprintf ("Step loop limit exceeded\n");
   break;
  }
 } while (off <= now);
 r_cons_break_pop ();
 return 1;
}
