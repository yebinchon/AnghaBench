
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int esil; TYPE_2__** src; TYPE_1__* dst; } ;
struct TYPE_6__ {int imm; } ;
struct TYPE_5__ {int reg; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;


 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 int r_reg_get (int *,int ,int ) ;
 int r_strbuf_set (int *,char*) ;
 int * regs_1 ;

__attribute__((used)) static inline void gb_anal_xor_ccf (RReg *reg, RAnalOp *op) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->dst->reg = r_reg_get (reg, regs_1[3], R_REG_TYPE_GPR);
 op->src[0]->imm = 1;
 r_strbuf_set (&op->esil, "C,!=");
}
