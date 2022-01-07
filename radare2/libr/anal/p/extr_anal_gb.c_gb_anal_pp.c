
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {int esil; TYPE_1__** src; TYPE_1__* dst; } ;
struct TYPE_5__ {int reg; } ;
typedef int RReg ;
typedef TYPE_1__ RAnalValue ;
typedef TYPE_2__ RAnalOp ;


 int R_REG_TYPE_GPR ;
 TYPE_1__* r_anal_value_new () ;
 int r_reg_get (int *,int ,int ) ;
 int r_strbuf_setf (int *,char*,int ) ;
 int * regs_16_alt ;

__attribute__((used)) static inline void gb_anal_pp (RReg *reg, RAnalOp *op, const ut8 data)
{
 RAnalValue *val = r_anal_value_new ();
 val->reg = r_reg_get (reg, regs_16_alt[(data>>4) - 12], R_REG_TYPE_GPR);
 if ((data & 0xf) == 1) {
  op->dst = val;
  r_strbuf_setf (&op->esil, "sp,[2],%s,=,2,sp,+=", regs_16_alt[(data>>4) - 12]);
 } else {
  op->src[0] = val;
  r_strbuf_setf (&op->esil, "2,sp,-=,%s,sp,=[2]", regs_16_alt[(data>>4) - 12]);
 }
}
