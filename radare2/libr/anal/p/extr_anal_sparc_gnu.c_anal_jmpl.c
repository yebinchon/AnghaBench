
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
typedef int ut32 ;
typedef int st64 ;
struct TYPE_3__ {int eob; int dst; int type; scalar_t__ fail; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 scalar_t__ GPR_G0 ;
 scalar_t__ GPR_I7 ;
 scalar_t__ GPR_O7 ;
 int R_ANAL_OP_TYPE_RET ;
 int R_ANAL_OP_TYPE_UCALL ;
 int R_ANAL_OP_TYPE_UJMP ;
 int X_LDST_I (int const) ;
 scalar_t__ X_RD (int const) ;
 scalar_t__ X_RS1 (int const) ;
 int X_RS2 (int const) ;
 int get_immed_sgnext (int const,int) ;
 int value_fill_addr_reg_disp (int const* const,scalar_t__,int) ;
 int value_fill_addr_reg_regdelta (int const* const,scalar_t__,int ) ;

__attribute__((used)) static void anal_jmpl(RAnal const * const anal, RAnalOp *op, const ut32 insn, const ut64 addr) {
 st64 disp = 0;
 if (X_LDST_I (insn)) {
  disp = get_immed_sgnext (insn, 12);
 }

 if (X_RD(insn) == GPR_O7) {
  op->type = R_ANAL_OP_TYPE_UCALL;
  op->fail = addr + 4;
 } else if (X_RD(insn) == GPR_G0
  && X_LDST_I(insn) == 1
  && (X_RS1(insn) == GPR_I7 || X_RS1(insn) == GPR_O7)
  && disp == 8) {
   op->type = R_ANAL_OP_TYPE_RET;
   op->eob = 1;
   return;
   }
 else {
  op->type = R_ANAL_OP_TYPE_UJMP;
  op->eob = 1;
 }

 if(X_LDST_I(insn)) {
  op->dst = value_fill_addr_reg_disp(anal, X_RS1(insn), disp);
 } else {
  op->dst = value_fill_addr_reg_regdelta(anal, X_RS1(insn), X_RS2(insn));
 }
}
