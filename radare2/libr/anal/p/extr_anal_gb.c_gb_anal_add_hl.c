
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int esil; TYPE_1__** src; TYPE_2__* dst; } ;
struct TYPE_6__ {void* reg; } ;
struct TYPE_5__ {void* reg; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;


 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 void* r_reg_get (int *,char*,int ) ;
 int r_strbuf_setf (int *,char*,char*) ;
 char** regs_16 ;

__attribute__((used)) static inline void gb_anal_add_hl (RReg *reg, RAnalOp *op, const ut8 data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->dst->reg = r_reg_get (reg, "hl", R_REG_TYPE_GPR);
 op->src[0]->reg = r_reg_get (reg, regs_16[((data & 0xf0)>>4)], R_REG_TYPE_GPR);
 r_strbuf_setf (&op->esil, "%s,hl,+=,0,N,:=", regs_16[((data & 0xf0)>>4)]);
}
