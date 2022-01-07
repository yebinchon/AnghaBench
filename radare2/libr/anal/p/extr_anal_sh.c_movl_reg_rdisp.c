
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_3__ {int size; int esil; int dst; int * src; int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int GET_SOURCE_REG (int) ;
 int GET_TARGET_REG (int) ;
 int LONG_SIZE ;
 int R_ANAL_OP_TYPE_STORE ;
 int anal_fill_ai_rg (int *,int ) ;
 int anal_fill_reg_disp_mem (int *,int ,int,int ) ;
 int r_strbuf_setf (int *,char*,int ,int ,int) ;

__attribute__((used)) static int movl_reg_rdisp(RAnal* anal, RAnalOp* op, ut16 code) {
 op->type = R_ANAL_OP_TYPE_STORE;
 op->src[0] = anal_fill_ai_rg (anal, GET_SOURCE_REG (code));
 op->dst = anal_fill_reg_disp_mem (anal, GET_TARGET_REG (code), code & 0x0F, LONG_SIZE);
 r_strbuf_setf (&op->esil, "r%d,r%d,0x%x,+,=[4]", GET_SOURCE_REG (code), GET_TARGET_REG (code), (code & 0xF) << 2);
 return op->size;
}
