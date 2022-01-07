
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
 int r_strbuf_setf (int *,char*,int ,int ,int ,int ) ;
 int * regs_x ;

__attribute__((used)) static inline void gb_anal_cb_sra (RReg *reg, RAnalOp *op, const ut8 data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->src[0]->imm = 1;
 op->dst->reg = r_reg_get (reg, regs_x[data & 7], R_REG_TYPE_GPR);
 op->dst->memref = ((data & 7) == 6);
 if (op->dst->memref) {
  r_strbuf_setf (&op->esil, "1,%s,[1],&,C,:=,0x80,%s,[1],&,1,%s,[1],>>,|,%s,=[1],$z,Z,:=,0,N,:=,0,H,:=", regs_x[data & 7], regs_x[data & 7], regs_x[data & 7], regs_x[data & 7]);
 } else {
  r_strbuf_setf (&op->esil, "1,%s,&,C,:=,0x80,%s,&,1,%s,>>,|,%s,=,$z,Z,:=,0,N,:=,0,H,:=", regs_x[data & 7], regs_x[data & 7], regs_x[data & 7], regs_x[data & 7]);
 }
}
