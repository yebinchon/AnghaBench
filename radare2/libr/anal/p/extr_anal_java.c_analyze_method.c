
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int addr; int bbs; } ;
struct TYPE_6__ {int anal_ret_val; TYPE_2__* current_fcn; } ;
typedef TYPE_1__ RAnalState ;
typedef TYPE_2__ RAnalFunction ;
typedef int RAnal ;


 int java_new_method (int ) ;
 int r_anal_bb_list_new () ;
 int r_anal_ex_perform_analysis (int *,TYPE_1__*,int ) ;
 int r_list_free (int ) ;

__attribute__((used)) static int analyze_method(RAnal *anal, RAnalFunction *fcn, RAnalState *state) {

 r_list_free (fcn->bbs);
 fcn->bbs = r_anal_bb_list_new ();
 java_new_method (fcn->addr);
 state->current_fcn = fcn;


 r_anal_ex_perform_analysis (anal, state, fcn->addr);
 return state->anal_ret_val;
}
