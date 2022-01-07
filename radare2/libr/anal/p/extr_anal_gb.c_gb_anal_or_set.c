
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_10__ {int reg; } ;
struct TYPE_9__ {TYPE_2__** src; int esil; TYPE_1__* dst; } ;
struct TYPE_8__ {int imm; } ;
struct TYPE_7__ {int memref; int reg; } ;
typedef TYPE_3__ RAnalOp ;
typedef TYPE_4__ RAnal ;


 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 int r_reg_get (int ,int ,int ) ;
 int r_strbuf_setf (int *,char*,int,int ,...) ;
 int * regs_x ;

__attribute__((used)) static inline void gb_anal_or_set (RAnal *anal, RAnalOp *op, const ut8 data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->src[0]->imm = (data>>3) & 7;
 op->dst->memref = ((data & 7) == 6);
 op->dst->reg = r_reg_get (anal->reg, regs_x[data & 7], R_REG_TYPE_GPR);
 if (op->dst->memref) {
  r_strbuf_setf (&op->esil, "0x%02x,%s,[1],|,%s,=[1]", op->src[0]->imm, regs_x[data & 7], regs_x[data & 7], op->src[0]->imm);
 } else {
  r_strbuf_setf (&op->esil, "0x%02x,%s,|=", op->src[0]->imm, regs_x[data & 7]);
 }
}
