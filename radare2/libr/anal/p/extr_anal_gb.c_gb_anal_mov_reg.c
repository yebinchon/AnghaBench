
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int esil; TYPE_2__** src; TYPE_1__* dst; } ;
struct TYPE_6__ {void* reg; } ;
struct TYPE_5__ {void* reg; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;


 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 void* r_reg_get (int *,int ,int ) ;
 int r_strbuf_setf (int *,char*,int ,int ) ;
 int * regs_8 ;

__attribute__((used)) static void gb_anal_mov_reg (RReg *reg, RAnalOp *op, const ut8 data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->dst->reg = r_reg_get (reg, regs_8[(data/8) - 8], R_REG_TYPE_GPR);
 op->src[0]->reg = r_reg_get (reg, regs_8[data & 7], R_REG_TYPE_GPR);
 r_strbuf_setf (&op->esil, "%s,%s,=", regs_8[data & 7], regs_8[(data/8) - 8]);
}
