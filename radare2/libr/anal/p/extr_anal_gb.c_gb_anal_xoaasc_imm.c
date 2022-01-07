
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int type; int esil; TYPE_2__** src; TYPE_1__* dst; } ;
struct TYPE_6__ {int absolute; int imm; void* reg; } ;
struct TYPE_5__ {void* reg; } ;
typedef int RReg ;
typedef TYPE_3__ RAnalOp ;
 int R_REG_TYPE_GPR ;
 void* r_anal_value_new () ;
 void* r_reg_get (int *,char*,int ) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_setf (int *,char*,int const) ;

__attribute__((used)) static void gb_anal_xoaasc_imm (RReg *reg, RAnalOp *op, const ut8 *data)
{
 op->dst = r_anal_value_new ();
 op->src[0] = r_anal_value_new ();
 op->dst->reg = r_reg_get (reg, "a", R_REG_TYPE_GPR);
 op->src[0]->absolute = 1;
 op->src[0]->imm = data[1];
 switch (op->type) {
 case 128:
  r_strbuf_setf (&op->esil, "0x%02x,a,^=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=", data[1]);
  break;
 case 130:
  r_strbuf_setf (&op->esil, "0x%02x,a,|=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=", data[1]);
  break;
 case 132:
  r_strbuf_setf (&op->esil, "0x%02x,a,&=,$z,Z,:=,0,N,:=,1,H,:=,0,C,:=", data[1]);
  break;
 case 133:
  r_strbuf_setf (&op->esil, "0x%02x,", data[1]);
  if (data[0] == 0xce) {
   op->src[1] = r_anal_value_new ();
   op->src[1]->reg = r_reg_get (reg, "C", R_REG_TYPE_GPR);
   r_strbuf_append (&op->esil, "a,+=,C,NUM,7,$c,C,:=,3,$c,H,:=,a,+=,7,$c,C,|,C,:=,3,$c,H,|=,a,a,=,$z,Z,:=,0,N,:=");
  } else {
   r_strbuf_append (&op->esil, "a,+=,3,$c,H,:=,7,$c,C,:=,0,N,:=,a,a,=,$z,Z,:=");
  }
  break;
 case 129:
  r_strbuf_setf (&op->esil, "0x%02x,", data[1]);
  if (data[0] == 0xde) {
   op->src[1] = r_anal_value_new ();
   op->src[1]->reg = r_reg_get (reg, "C", R_REG_TYPE_GPR);
   r_strbuf_append (&op->esil, "a,-=,C,NUM,8,$b,C,:=,4,$b,H,:=,a,-=,8,$b,C,|,C,=,4,$b,H,|,H,=,a,a,=,$z,Z,:=,1,N,:=");
  } else {
   r_strbuf_append (&op->esil, "a,-=,4,$b,H,:=,8,$b,C,:=,1,N,:=,a,a,=,$z,Z,:=");
  }
  break;
 case 131:
  r_strbuf_setf (&op->esil, "%d,a,==,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=", data[1]);
  break;
 }
}
