
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int type; int esil; TYPE_2__** src; TYPE_1__* dst; } ;
struct TYPE_6__ {int memref; void* reg; } ;
struct TYPE_5__ {void* reg; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;
 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 void* r_reg_get (int *,char*,int ) ;
 int r_strbuf_setf (int *,char*,char*) ;
 char** regs_x ;

__attribute__((used)) static void gb_anal_xoaasc (RReg *reg, RAnalOp *op, const ut8 *data) {
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->dst->reg = r_reg_get (reg, "a", R_REG_TYPE_GPR);
 op->src[0]->reg = r_reg_get (reg, regs_x[data[0] & 7], R_REG_TYPE_GPR);
 op->src[0]->memref = ((data[0] & 7) == 6);
 switch (op->type) {
 case 128:
  if (op->src[0]->memref) {
   r_strbuf_setf (&op->esil, "%s,[1],a,^=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=", regs_x[data[0] & 7]);
  } else {
   r_strbuf_setf (&op->esil, "%s,a,^=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=", regs_x[data[0] & 7]);
  }
  break;
 case 130:
  if (op->src[0]->memref) {
   r_strbuf_setf (&op->esil, "%s,[1],a,|=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=", regs_x[data[0] &7]);
  } else {
   r_strbuf_setf (&op->esil, "%s,a,|=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=", regs_x[data[0] & 7]);
  }
  break;
 case 132:
  if (op->src[0]->memref) {
   r_strbuf_setf (&op->esil, "%s,[1],a,&=,$z,Z,:=,0,N,:=,1,H,:=,0,C,:=", regs_x[data[0] & 7]);
  } else {
   r_strbuf_setf (&op->esil, "%s,a,&=,$z,Z,:=,0,N,:=,1,H,:=,0,C,:=", regs_x[data[0] & 7]);
  }
  break;
 case 133:
  if (op->src[0]->memref) {
   if (data[0] > 0x87) {
    op->src[1] = r_anal_value_new ();
    op->src[1]->reg = r_reg_get (reg, "C", R_REG_TYPE_GPR);
    r_strbuf_setf ( &op->esil, "C,%s,[1],+,a,+=,$z,Z,:=,3,$c,H,:=,7,$c,C,:=,0,N,:=", regs_x[data[0] & 7]);
   } else {
    r_strbuf_setf (&op->esil, "%s,[1],a,+=,$z,Z,:=,3,$c,H,:=,7,$c,C,:=,0,N,:=", regs_x[data[0] & 7]);
   }
  } else {
   if (data[0] > 0x87) {
    op->src[1] = r_anal_value_new ();
    op->src[1]->reg = r_reg_get (reg, "C", R_REG_TYPE_GPR);
    r_strbuf_setf (&op->esil, "C,%s,+,a,+=,$z,Z,:=,3,$c,H,:=,7,$c,C,:=,0,N,:=", regs_x[data[0] & 7]);
   } else {
    r_strbuf_setf (&op->esil, "%s,a,+=,$z,Z,:=,3,$c,H,:=,7,$c,C,:=,0,N,:=", regs_x[data[0] & 7]);
   }
  }
  break;
 case 129:
  if (op->src[0]->memref) {
   if (data[0] > 0x97) {
    op->src[1] = r_anal_value_new ();
    op->src[1]->reg = r_reg_get (reg, "C", R_REG_TYPE_GPR);
    r_strbuf_setf (&op->esil, "C,%s,[1],+,a,-=,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=", regs_x[data[0] & 7]);
   } else {
    r_strbuf_setf (&op->esil, "%s,[1],a,-=,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=", regs_x[data[0] & 7]);
   }
  } else {
   if (data[0] > 0x97) {
    op->src[1] = r_anal_value_new ();
    op->src[1]->reg = r_reg_get (reg, "C", R_REG_TYPE_GPR);
    r_strbuf_setf (&op->esil, "C,%s,+,a,-=,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=", regs_x[data[0] & 7]);
   } else {
    r_strbuf_setf (&op->esil, "%s,a,-=,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=", regs_x[data[0] & 7]);
   }
  }
  break;
 case 131:
  if (op->src[0]->memref) {
   r_strbuf_setf (&op->esil, "%s,[1],a,==,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=", regs_x[data[0] & 7]);
  } else {
   r_strbuf_setf (&op->esil, "%s,a,==,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=", regs_x[data[0] & 7]);
  }
  break;
 default:

  break;
 }
}
