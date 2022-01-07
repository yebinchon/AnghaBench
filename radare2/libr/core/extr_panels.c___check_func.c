
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bbs; } ;
struct TYPE_5__ {int offset; int anal; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RAnalFunction ;


 int R_ANAL_FCN_TYPE_NULL ;
 TYPE_2__* r_anal_get_fcn_in (int ,int ,int ) ;
 int r_cons_message (char*) ;
 scalar_t__ r_list_empty (int ) ;

bool __check_func(RCore *core) {
 RAnalFunction *fun = r_anal_get_fcn_in (core->anal, core->offset, R_ANAL_FCN_TYPE_NULL);
 if (!fun) {
  r_cons_message ("Not in a function. Type 'df' to define it here");
  return 0;
 }
 if (r_list_empty (fun->bbs)) {
  r_cons_message ("No basic blocks in this function. You may want to use 'afb+'.");
  return 0;
 }
 return 1;
}
