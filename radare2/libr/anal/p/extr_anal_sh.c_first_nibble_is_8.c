
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_3__ {int eob; int delay; int size; int esil; void* dst; void** src; void* type; int jump; scalar_t__ addr; scalar_t__ fail; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int BYTE_SIZE ;
 int GET_BTF_OFFSET (int) ;
 int GET_SOURCE_REG (int) ;
 scalar_t__ IS_BF (int) ;
 scalar_t__ IS_BFS (int) ;
 scalar_t__ IS_BT (int) ;
 scalar_t__ IS_BTS (int) ;
 scalar_t__ IS_BT_OR_BF (int) ;
 scalar_t__ IS_CMPIMM (int) ;
 scalar_t__ IS_MOVB_R0_REGDISP (int) ;
 scalar_t__ IS_MOVB_REGDISP_R0 (int) ;
 scalar_t__ IS_MOVW_R0_REGDISP (int) ;
 scalar_t__ IS_MOVW_REGDISP_R0 (int) ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_CMP ;
 void* R_ANAL_OP_TYPE_LOAD ;
 void* R_ANAL_OP_TYPE_STORE ;
 int WORD_SIZE ;
 void* anal_fill_ai_rg (int *,int ) ;
 void* anal_fill_reg_disp_mem (int *,int,int,int ) ;
 int disarm_8bit_offset (scalar_t__,int ) ;
 int r_strbuf_setf (int *,char*,int,...) ;

__attribute__((used)) static int first_nibble_is_8(RAnal* anal, RAnalOp* op, ut16 code) {
 if (IS_BT_OR_BF (code)) {
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = disarm_8bit_offset (op->addr, GET_BTF_OFFSET (code));
  op->fail = op->addr + 2 ;
  op->eob = 1;
  if (IS_BT (code)) {
   r_strbuf_setf (&op->esil, "sr,1,&,?{,0x%x,pc,=,}", op->jump);
  } else if (IS_BTS (code)) {
   r_strbuf_setf (&op->esil, "1,SETD,sr,1,&,?{,0x%x,pc,=,}", op->jump);
   op->delay = 1;
  } else if (IS_BFS (code)) {
   r_strbuf_setf (&op->esil, "1,SETD,sr,1,&,!,?{,0x%x,pc,=,}",op->jump);
   op->delay = 1;
  } else if (IS_BF (code)) {
   r_strbuf_setf (&op->esil, "sr,1,&,!,?{,0x%x,pc,=,}", op->jump);
  }
 } else if (IS_MOVB_REGDISP_R0 (code)) {

  op->type = R_ANAL_OP_TYPE_LOAD;
  op->dst = anal_fill_ai_rg (anal, 0);
  op->src[0] = anal_fill_reg_disp_mem (anal, GET_SOURCE_REG (code), code & 0x0F, BYTE_SIZE);
  r_strbuf_setf (&op->esil, "r%d,0x%x,+,[1],DUP,0x80,&,?{,0xFFFFFF00,|,},r0,=", GET_SOURCE_REG (code), code & 0xF);
 } else if (IS_MOVW_REGDISP_R0 (code)) {

  op->type = R_ANAL_OP_TYPE_LOAD;
  op->dst = anal_fill_ai_rg (anal, 0);
  op->src[0] = anal_fill_reg_disp_mem (anal, GET_SOURCE_REG (code), code & 0x0F, WORD_SIZE);
  r_strbuf_setf (&op->esil, "r%d,0x%x,+,[2],DUP,0x8000,&,?{,0xFFFF0000,|,},r0,=", GET_SOURCE_REG (code), (code & 0xF) * 2);
 } else if (IS_CMPIMM (code)) {
  op->type = R_ANAL_OP_TYPE_CMP;
  r_strbuf_setf (&op->esil, "0xFFFFFFFE,sr,&=,0x%x,DUP,0x80,&,?{,0xFFFFFF00,|,},r0,==,$z,sr,|,sr,:=", code & 0xFF);
 } else if (IS_MOVB_R0_REGDISP (code)) {

  op->type = R_ANAL_OP_TYPE_STORE;
  op->src[0] = anal_fill_ai_rg (anal, 0);
  op->dst = anal_fill_reg_disp_mem (anal, GET_SOURCE_REG (code), code & 0x0F, BYTE_SIZE);
  r_strbuf_setf (&op->esil, "r0,0xFF,&,0x%x,r%d,+,=[1]", code & 0xF, GET_SOURCE_REG (code));
 } else if (IS_MOVW_R0_REGDISP (code)) {

  op->type = R_ANAL_OP_TYPE_STORE;
  op->src[0] = anal_fill_ai_rg (anal, 0);
  op->dst = anal_fill_reg_disp_mem (anal, GET_SOURCE_REG (code), code & 0x0F, WORD_SIZE);
  r_strbuf_setf (&op->esil, "r0,0xFFFF,&,0x%x,r%d,+,=[2]", (code & 0xF) * 2, GET_SOURCE_REG (code));
 }
 return op->size;
}
