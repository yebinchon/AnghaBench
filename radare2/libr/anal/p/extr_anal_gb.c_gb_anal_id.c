
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
struct TYPE_9__ {scalar_t__ type; int esil; TYPE_2__* dst; TYPE_1__** src; } ;
struct TYPE_8__ {int memref; void* reg; } ;
struct TYPE_7__ {int imm; int absolute; } ;
typedef TYPE_3__ RAnalOp ;
typedef TYPE_4__ RAnal ;


 scalar_t__ R_ANAL_OP_TYPE_ADD ;
 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 void* r_reg_get (int ,char*,int ) ;
 int r_strbuf_set (int *,char*) ;
 int r_strbuf_setf (int *,char*,char*) ;
 char** regs_16 ;
 char** regs_8 ;

__attribute__((used)) static inline void gb_anal_id (RAnal *anal, RAnalOp *op, const ut8 data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->src[0]->imm = 1;
 op->src[0]->absolute = 1;
 if (data == 0x34 || data == 0x35) {
  op->dst->memref = 1;
  op->dst->reg = r_reg_get (anal->reg, "hl", R_REG_TYPE_GPR);
  if (op->type == R_ANAL_OP_TYPE_ADD) {
   r_strbuf_set (&op->esil, "1,hl,[1],+,hl,=[1],3,$c,H,:=,$z,Z,:=,0,N,:=");
  } else {
   r_strbuf_set (&op->esil, "1,hl,[1],-,hl,=[1],4,$b,H,:=,$z,Z,:=,1,N,:=");
  }
 } else {
  if (!(data & (1<<2))) {
   op->dst->reg = r_reg_get (anal->reg, regs_16[data>>4], R_REG_TYPE_GPR);
   if (op->type == R_ANAL_OP_TYPE_ADD) {
    r_strbuf_setf (&op->esil, "1,%s,+=", regs_16[data>>4]);
   } else {
    r_strbuf_setf (&op->esil, "1,%s,-=", regs_16[data >> 4]);
   }
  } else {
   op->dst->reg = r_reg_get (anal->reg, regs_8[data>>3], R_REG_TYPE_GPR);
   if (op->type == R_ANAL_OP_TYPE_ADD) {
    r_strbuf_setf (&op->esil, "1,%s,+=,3,$c,H,:=,$z,Z,:=,0,N,:=", regs_8[data>>3]);
   } else {
    r_strbuf_setf (&op->esil, "1,%s,-=,4,$b,H,:=,$z,Z,:=,1,N,:=", regs_8[data >> 3]);
   }
  }
 }
}
