
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int val; TYPE_2__** src; int esil; TYPE_1__* dst; } ;
struct TYPE_6__ {int imm; int absolute; } ;
struct TYPE_5__ {void* reg; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;


 int GB_SOFTCAST (int const,int const) ;
 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 void* r_reg_get (int *,int ,int ) ;
 int r_strbuf_setf (int *,char*,int,int ) ;
 int * regs_16 ;
 int * regs_8 ;

__attribute__((used)) static void gb_anal_mov_imm (RReg *reg, RAnalOp *op, const ut8 *data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 if (data[0] & 1) {
  op->dst->reg = r_reg_get (reg, regs_16[data[0]>>4], R_REG_TYPE_GPR);
  op->src[0]->imm = GB_SOFTCAST (data[1], data[2]);
  r_strbuf_setf (&op->esil, "0x%04x,%s,=", op->src[0]->imm, regs_16[data[0]>>4]);
 } else {
  op->dst->reg = r_reg_get (reg, regs_8[data[0]>>3], R_REG_TYPE_GPR);
  op->src[0]->imm = data[1];
  r_strbuf_setf (&op->esil, "0x%02x,%s,=", op->src[0]->imm, regs_8[data[0]>>3]);
 }
 op->src[0]->absolute = 1;
 op->val = op->src[0]->imm;
}
