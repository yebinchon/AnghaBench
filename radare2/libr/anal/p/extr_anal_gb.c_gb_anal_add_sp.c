
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int const st8 ;
struct TYPE_7__ {int esil; TYPE_2__** src; TYPE_1__* dst; } ;
struct TYPE_6__ {int imm; } ;
struct TYPE_5__ {int reg; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;


 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 int r_reg_get (int *,char*,int ) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_setf (int *,char*,int const) ;

__attribute__((used)) static inline void gb_anal_add_sp (RReg *reg, RAnalOp *op, const ut8 data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->dst->reg = r_reg_get (reg, "sp", R_REG_TYPE_GPR);
 op->src[0]->imm = (st8)data;
 if (data < 128) {
  r_strbuf_setf (&op->esil, "0x%02x,sp,+=", data);
 } else {
  r_strbuf_setf (&op->esil, "0x%02x,sp,-=", 0 - (st8)data);
 }
 r_strbuf_append (&op->esil, ",0,Z,=,0,N,:=");
}
