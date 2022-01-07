
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_8__ {int type; } ;
struct TYPE_7__ {int done; TYPE_2__* current_bb; TYPE_2__* current_bb_head; } ;
typedef TYPE_1__ RAnalState ;
typedef TYPE_2__ RAnalBlock ;
typedef int RAnal ;


 int R_ANAL_BB_TYPE_TAIL ;
 int R_ANAL_RET_END ;
 int R_ANAL_RET_ERROR ;
 int r_anal_ex_update_bb_cfg_head_tail (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int r_return_val_if_fail (int,int ) ;

__attribute__((used)) static int java_revisit_bb_anal_recursive_descent(RAnal *anal, RAnalState *state, ut64 addr) {
 r_return_val_if_fail (anal && state, R_ANAL_RET_ERROR);
 RAnalBlock *head = state->current_bb_head;
 RAnalBlock *bb = state->current_bb;
 r_return_val_if_fail (bb && head, R_ANAL_RET_ERROR);
 if (bb->type & R_ANAL_BB_TYPE_TAIL) {
  r_anal_ex_update_bb_cfg_head_tail (head, head, bb);

  state->done = 1;
 }
 return R_ANAL_RET_END;
}
