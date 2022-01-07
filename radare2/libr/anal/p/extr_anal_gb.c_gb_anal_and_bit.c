
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {TYPE_2__** src; int esil; TYPE_1__* dst; } ;
struct TYPE_6__ {int imm; } ;
struct TYPE_5__ {int memref; int reg; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;


 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 int r_reg_get (int *,int ,int ) ;
 int r_strbuf_setf (int *,char*,int,int ) ;
 int * regs_x ;

__attribute__((used)) static inline void gb_anal_and_bit (RReg *reg, RAnalOp *op, const ut8 data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->src[0]->imm = 1<<((data>>3) & 7);
 op->dst->memref = ((data & 7) == 6);
 op->dst->reg = r_reg_get (reg, regs_x[data & 7], R_REG_TYPE_GPR);
 if (op->dst->memref) {
  r_strbuf_setf (&op->esil, "%i,%s,[1],&,0,==,$z,Z,:=,0,N,:=,1,H,:=", op->src[0]->imm, regs_x[data & 7]);
 } else {
  r_strbuf_setf (&op->esil, "%i,%s,&,0,==,$z,Z,:=,0,N,:=,1,H,:=", op->src[0]->imm, regs_x[data & 7]);
 }
}
