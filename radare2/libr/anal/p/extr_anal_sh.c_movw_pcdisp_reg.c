
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_5__ {int memref; scalar_t__ base; } ;
struct TYPE_4__ {int size; TYPE_2__** src; int esil; scalar_t__ addr; int dst; int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int GET_TARGET_REG (int) ;
 int R_ANAL_OP_TYPE_LOAD ;
 int anal_fill_ai_rg (int *,int ) ;
 TYPE_2__* r_anal_value_new () ;
 int r_strbuf_setf (int *,char*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int movw_pcdisp_reg(RAnal* anal, RAnalOp* op, ut16 code) {
 op->type = R_ANAL_OP_TYPE_LOAD;
 op->dst = anal_fill_ai_rg (anal, GET_TARGET_REG (code));
 op->src[0] = r_anal_value_new ();
 op->src[0]->base = (code & 0xFF) * 2+op->addr + 4;
 op->src[0]->memref=1;
 r_strbuf_setf (&op->esil, "0x%x,[2],r%d,=,r%d,0x8000,&,?{,0xFFFF0000,r%d,|=,}", op->src[0]->base, GET_TARGET_REG (code), GET_TARGET_REG (code), GET_TARGET_REG (code));
 return op->size;
}
