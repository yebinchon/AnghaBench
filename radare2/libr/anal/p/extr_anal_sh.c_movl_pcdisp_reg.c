
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_4__ {int addr; int size; int esil; int dst; int * src; int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int GET_TARGET_REG (int) ;
 int LONG_SIZE ;
 int R_ANAL_OP_TYPE_LOAD ;
 int anal_fill_ai_rg (int *,int ) ;
 int anal_pcrel_disp_mov (int *,TYPE_1__*,int,int ) ;
 int r_strbuf_setf (int *,char*,int,int ) ;

__attribute__((used)) static int movl_pcdisp_reg(RAnal* anal, RAnalOp* op, ut16 code) {
 op->type = R_ANAL_OP_TYPE_LOAD;
 op->src[0] = anal_pcrel_disp_mov (anal, op, code & 0xFF, LONG_SIZE);

 op->dst = anal_fill_ai_rg (anal, GET_TARGET_REG (code));

 r_strbuf_setf (&op->esil, "0x%x,[4],r%d,=", (code & 0xFF) * 4 + ((op->addr >> 2)<<2) + 4, GET_TARGET_REG (code));
 return op->size;
}
