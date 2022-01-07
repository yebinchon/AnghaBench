
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_12__ {int esil; } ;
struct TYPE_11__ {int addr; } ;
struct TYPE_10__ {int offset; TYPE_9__* anal; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RAnalFunction ;


 int eprintf (char*) ;
 int help_msg_aft ;
 int r_anal_esil_set_pc (int ,int ) ;
 TYPE_2__* r_anal_get_fcn_in (TYPE_9__*,int ,int) ;
 int r_cons_break_pop () ;
 int r_cons_break_push (int *,int *) ;
 int r_core_anal_type_match (TYPE_1__*,TYPE_2__*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_core_seek (TYPE_1__*,int ,int) ;

__attribute__((used)) static void type_cmd(RCore *core, const char *input) {
 RAnalFunction *fcn = r_anal_get_fcn_in (core->anal, core->offset, -1);
 if (!fcn && *input != '?') {
  eprintf ("cant find function here\n");
  return;
 }
 ut64 seek;
 r_cons_break_push (((void*)0), ((void*)0));
 switch (*input) {
 case '\0':
  seek = core->offset;
  r_anal_esil_set_pc (core->anal->esil, fcn? fcn->addr: core->offset);
  r_core_anal_type_match (core, fcn);
  r_core_seek (core, seek, 1);
  break;
 case '?':
  r_core_cmd_help (core, help_msg_aft);
  break;
 }
 r_cons_break_pop ();
}
