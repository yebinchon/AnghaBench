
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* anal; } ;
struct TYPE_10__ {int break_loop; TYPE_2__* anal; TYPE_5__* dbg; } ;
struct TYPE_9__ {int esil; } ;
struct TYPE_8__ {int esil; } ;
typedef TYPE_3__ RCore ;


 int R_REG_TYPE_ALL ;
 int eprintf (char*,...) ;
 scalar_t__ r_anal_esil_condition (int ,char const*) ;
 int r_cons_break_pop () ;
 int r_cons_break_push (int *,int *) ;
 scalar_t__ r_cons_is_breaked () ;
 scalar_t__ r_debug_is_dead (TYPE_5__*) ;
 int r_debug_reg_sync (TYPE_5__*,int ,int) ;
 int r_debug_step (TYPE_5__*,int) ;

__attribute__((used)) static int step_until_esil(RCore *core, const char *esilstr) {
 if (!core || !esilstr || !core->dbg || !core->dbg->anal || !core->dbg->anal->esil) {

  eprintf ("Not initialized %p. Run 'aei' first.\n", core->anal->esil);
  return 0;
 }
 r_cons_break_push (((void*)0), ((void*)0));
 for (;;) {
  if (r_cons_is_breaked ()) {
   core->break_loop = 1;
   break;
  }
  if (r_debug_is_dead (core->dbg)) {
   core->break_loop = 1;
   break;
  }
  r_debug_step (core->dbg, 1);
  r_debug_reg_sync (core->dbg, R_REG_TYPE_ALL, 0);
  if (r_anal_esil_condition (core->anal->esil, esilstr)) {
   eprintf ("ESIL BREAK!\n");
   break;
  }
 }
 r_cons_break_pop ();
 return 1;
}
