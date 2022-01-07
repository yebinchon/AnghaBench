
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut16 ;
typedef int st8 ;
struct TYPE_3__ {int size; int esil; int * src; int dst; int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int GET_TARGET_REG (int) ;
 int R_ANAL_OP_TYPE_MOV ;
 int anal_fill_ai_rg (int *,int ) ;
 int anal_fill_im (int *,int ) ;
 int r_strbuf_setf (int *,char*,int,int ,int ,int ) ;

__attribute__((used)) static int mov_imm_reg(RAnal* anal, RAnalOp* op, ut16 code) {
 op->type = R_ANAL_OP_TYPE_MOV;
 op->dst = anal_fill_ai_rg (anal, GET_TARGET_REG (code));
 op->src[0] = anal_fill_im (anal, (st8)(code & 0xFF));
 r_strbuf_setf (&op->esil, "0x%x,r%d,=,r%d,0x80,&,?{,0xFFFFFF00,r%d,|=,}", code & 0xFF, GET_TARGET_REG (code), GET_TARGET_REG (code), GET_TARGET_REG (code));
 return op->size;
}
