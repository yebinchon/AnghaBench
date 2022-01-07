
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int type; int type2; } ;
struct TYPE_5__ {TYPE_2__* current_bb; scalar_t__ current_bb_head; } ;
typedef TYPE_1__ RAnalState ;
typedef TYPE_2__ RAnalBlock ;
typedef int RAnal ;


 int R_ANAL_BB_TYPE_TAIL ;
 int R_ANAL_EX_CODE_OP ;
 int handle_bb_cf_linear_sweep (int *,TYPE_1__*) ;

__attribute__((used)) static int java_linear_sweep(RAnal *anal, RAnalState *state, ut64 addr) {
 RAnalBlock *bb = state->current_bb;
 if (state->current_bb_head && state->current_bb->type & R_ANAL_BB_TYPE_TAIL) {

 }
 if (bb->type2 & R_ANAL_EX_CODE_OP) {
  handle_bb_cf_linear_sweep (anal, state);
 }

 return 0;
}
