
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int esil; TYPE_2__* dst; TYPE_1__** src; } ;
struct TYPE_6__ {int memref; int reg; } ;
struct TYPE_5__ {int imm; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;


 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 int r_reg_get (int *,int ,int ) ;
 int r_strbuf_setf (int *,char*,int ,int ,int ) ;
 int * regs_x ;

__attribute__((used)) static inline void gb_anal_cb_swap (RReg *reg, RAnalOp* op, const ut8 data)
{
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->src[0]->imm = 4;
 op->dst->reg = r_reg_get (reg, regs_x[data & 7], R_REG_TYPE_GPR);
 if ((data & 7) == 6) {
  op->dst->memref = 1;
  r_strbuf_setf (&op->esil, "4,%s,[1],>>,4,%s,[1],<<,|,%s,=[1],$z,Z,:=", regs_x[data & 7], regs_x[data & 7], regs_x[data & 7]);
 } else {
  r_strbuf_setf (&op->esil, "4,%s,>>,4,%s,<<,|,%s,=,$z,Z,:=", regs_x[data & 7], regs_x[data & 7], regs_x[data & 7]);
 }
}
