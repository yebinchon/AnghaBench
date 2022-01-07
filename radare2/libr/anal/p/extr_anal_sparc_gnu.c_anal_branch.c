
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
typedef int ut32 ;
typedef int st64 ;
struct TYPE_3__ {int eob; scalar_t__ jump; int dst; scalar_t__ fail; int type; } ;
typedef TYPE_1__ RAnalOp ;


 scalar_t__ OP2_BPcc ;
 scalar_t__ OP2_BPr ;
 scalar_t__ OP2_Bicc ;
 scalar_t__ OP2_FBPfcc ;
 scalar_t__ OP2_FBfcc ;
 int R_ANAL_COND_ALWAYS ;
 int R_ANAL_COND_NEVER ;
 int R_ANAL_COND_UNKNOWN ;
 int R_ANAL_OP_TYPE_CJMP ;
 int R_ANAL_OP_TYPE_JMP ;
 int R_ANAL_OP_TYPE_NOP ;
 int X_COND (int const) ;
 int const X_DISP16 (int const) ;
 scalar_t__ X_OP2 (int const) ;
 int fcc_to_r_cond (int ) ;
 int get_immed_sgnext (int const,int) ;
 int icc_to_r_cond (int ) ;
 int value_fill_addr_pc_disp (scalar_t__ const,int) ;

__attribute__((used)) static void anal_branch(RAnalOp *op, const ut32 insn, const ut64 addr) {
 st64 disp = 0;
 int r_cond = 0;
 op->eob = 1;


 if(X_OP2(insn) == OP2_Bicc || X_OP2(insn) == OP2_BPcc) {
  r_cond = icc_to_r_cond (X_COND(insn));
 } else if(X_OP2(insn) == OP2_FBfcc || X_OP2(insn) == OP2_FBPfcc) {
  r_cond = fcc_to_r_cond (X_COND(insn));
 } else if(X_OP2(insn) == OP2_BPr) {
  r_cond = R_ANAL_COND_UNKNOWN;
 }

 if (r_cond == R_ANAL_COND_ALWAYS) {
  op->type = R_ANAL_OP_TYPE_JMP;
 } else if (r_cond == R_ANAL_COND_NEVER) {
  op->type = R_ANAL_OP_TYPE_NOP;
  return;
 } else {
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->fail = addr + 4;
 }



 if (X_OP2 (insn) == OP2_Bicc || X_OP2 (insn) == OP2_FBfcc) {
  disp = get_immed_sgnext(insn, 21) * 4;
 } else if (X_OP2(insn) == OP2_BPcc || X_OP2 (insn) == OP2_FBPfcc) {
  disp = get_immed_sgnext (insn, 18) * 4;
 } else if (X_OP2(insn) == OP2_BPr) {
  disp = get_immed_sgnext (X_DISP16 (insn), 15) * 4;
 }
 op->dst = value_fill_addr_pc_disp (addr, disp);
 op->jump = addr + disp;
}
