
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int esil; TYPE_1__** src; TYPE_2__* dst; } ;
struct TYPE_6__ {int reg; } ;
struct TYPE_5__ {int absolute; int imm; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;


 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 int r_reg_get (int *,char*,int ) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_setf (int *,char*,int) ;

__attribute__((used)) static inline void gb_anal_mov_ime (RReg *reg, RAnalOp *op, const ut8 data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->dst->reg = r_reg_get (reg, "ime", R_REG_TYPE_GPR);
 op->src[0]->absolute = 1;
 op->src[0]->imm = (data != 0xf3);
 r_strbuf_setf (&op->esil, "%d,ime,=", (int)op->src[0]->imm);
 if (data == 0xd9) {
  r_strbuf_append (&op->esil, ",");
 }
}
