
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_9__ {int type; int type2; } ;
struct TYPE_8__ {TYPE_2__* current_bb_head; TYPE_2__* current_bb; } ;
typedef TYPE_1__ RAnalState ;
typedef TYPE_2__ RAnalBlock ;
typedef int RAnal ;


 int R_ANAL_BB_TYPE_TAIL ;
 int R_ANAL_EX_CODE_OP ;
 int handle_bb_cf_recursive_descent (int *,TYPE_1__*) ;
 int r_anal_ex_update_bb_cfg_head_tail (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int r_return_val_if_fail (int ,int ) ;

__attribute__((used)) static int java_recursive_descent(RAnal *anal, RAnalState *state, ut64 addr) {
 r_return_val_if_fail (anal && state && state->current_bb && state->current_bb_head, 0);

 RAnalBlock *bb = state->current_bb;
 RAnalBlock *head = state->current_bb_head;

 if (head && bb->type & R_ANAL_BB_TYPE_TAIL) {
  r_anal_ex_update_bb_cfg_head_tail (head, head, bb);
 }
 if (bb->type2 & R_ANAL_EX_CODE_OP) {
  handle_bb_cf_recursive_descent (anal, state);
 }

 return 0;
}
