
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int ut16 ;
typedef int dword_instr ;
struct TYPE_4__ {int size; int cycles; int jump; void* type; int esil; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 void* R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_AND ;
 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_CMP ;
 void* R_ANAL_OP_TYPE_CPL ;
 void* R_ANAL_OP_TYPE_ILL ;
 void* R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_LOAD ;
 void* R_ANAL_OP_TYPE_MOV ;
 void* R_ANAL_OP_TYPE_MUL ;
 void* R_ANAL_OP_TYPE_NOP ;
 void* R_ANAL_OP_TYPE_OR ;
 void* R_ANAL_OP_TYPE_POP ;
 void* R_ANAL_OP_TYPE_PUSH ;
 void* R_ANAL_OP_TYPE_RET ;
 void* R_ANAL_OP_TYPE_ROL ;
 void* R_ANAL_OP_TYPE_ROR ;
 void* R_ANAL_OP_TYPE_STORE ;
 void* R_ANAL_OP_TYPE_SUB ;
 void* R_ANAL_OP_TYPE_UNK ;
 void* R_ANAL_OP_TYPE_XOR ;
 int R_MIN (int,int) ;
 int memcpy (int*,int const*,int ) ;
 int pic18_cond_branch (TYPE_1__*,int ,int const*,char*) ;
 int r_strbuf_setf (int *,char*,...) ;

__attribute__((used)) static int anal_pic_pic18_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len) {


 if (len < 2) {
  op->size = len;
  goto beach;
 }
 op->size = 2;
 ut16 b = *(ut16 *)buf;
 ut32 dword_instr = 0;
 memcpy (&dword_instr, buf, R_MIN (sizeof (dword_instr), len));
 switch (b >> 9) {
 case 0x76:
  if (len < 4) {
   goto beach;
  }
  if (dword_instr >> 28 != 0xf) {
   goto beach;
  }
  op->size = 4;
  op->type = R_ANAL_OP_TYPE_CALL;
  return op->size;
 };
 switch (b >> 11) {
 case 0x1b:
  op->type = R_ANAL_OP_TYPE_CALL;
  return op->size;
 case 0x1a:
  op->type = R_ANAL_OP_TYPE_JMP;
  op->cycles = 2;
  op->jump = addr + 2 + 2 * (*(ut16 *)buf & 0x7ff);
  r_strbuf_setf (&op->esil, "0x%x,pc,=", op->jump);
  return op->size;
 }
 switch (b >> 12) {
 case 0xf:
  op->type = R_ANAL_OP_TYPE_NOP;
  op->cycles = 1;
  r_strbuf_setf (&op->esil, ",");
  return op->size;
 case 0xc:
  if (len < 4) {
   goto beach;
  }
  if (dword_instr >> 28 != 0xf) {
   goto beach;
  }
  op->size = 4;
  op->type = R_ANAL_OP_TYPE_MOV;
  return op->size;
 case 0xb:
 case 0xa:
  op->type = R_ANAL_OP_TYPE_CJMP;
  return op->size;
 case 0x9:
 case 0x8:
 case 0x7:
  op->type = R_ANAL_OP_TYPE_UNK;
  return op->size;
 };

 switch (b >> 8) {
 case 0xe0:
  pic18_cond_branch (op, addr, buf, "z");
  return op->size;
 case 0xe1:
  pic18_cond_branch (op, addr, buf, "z,!");
  return op->size;
 case 0xe3:
  pic18_cond_branch (op, addr, buf, "c,!");
  return op->size;
 case 0xe4:
  pic18_cond_branch (op, addr, buf, "ov");
  return op->size;
 case 0xe5:
  pic18_cond_branch (op, addr, buf, "ov,!");
  return op->size;
 case 0xe6:
  pic18_cond_branch (op, addr, buf, "n");
  return op->size;
 case 0xe7:
  pic18_cond_branch (op, addr, buf, "n,!");
  return op->size;
 case 0xe2:
  pic18_cond_branch (op, addr, buf, "c");
  return op->size;
 case 0xef:
  if (len < 4) {
   goto beach;
  }
  if (dword_instr >> 28 != 0xf) {
   goto beach;
  }
  op->size = 4;
  op->cycles = 2;
  op->jump = ((dword_instr & 0xff) | ((dword_instr & 0xfff0000) >> 8)) * 2;
  r_strbuf_setf (&op->esil, "0x%x,pc,=", op->jump);
  op->type = R_ANAL_OP_TYPE_JMP;
  return op->size;
 case 0xf:
  op->type = R_ANAL_OP_TYPE_ADD;
  op->cycles = 1;

  r_strbuf_setf (&op->esil, "0x%x,wreg,+=,$z,z,:=,7,$s,n,:=,7,$c,c,:=,7,$o,ov,:=,", *(ut16 *)buf & 0xff);
  return op->size;
 case 0xe:
  op->type = R_ANAL_OP_TYPE_LOAD;
  op->cycles = 1;
  r_strbuf_setf (&op->esil, "0x%x,wreg,=,");
  return op->size;
 case 0xd:
  op->type = R_ANAL_OP_TYPE_MUL;
  op->cycles = 1;
  r_strbuf_setf (&op->esil, "0x%x,wreg,*,prod,=", *(ut16 *)buf & 0xff);
  return op->size;
 case 0xc:
  op->type = R_ANAL_OP_TYPE_RET;
  op->cycles = 2;
  r_strbuf_setf (&op->esil, "0x%x,wreg,=,tos,pc,=,", *(ut16 *)buf & 0xff);
  return op->size;
 case 0xb:
  op->type = R_ANAL_OP_TYPE_AND;
  op->cycles = 1;
  r_strbuf_setf (&op->esil, "0x%x,wreg,&=,$z,z,:=,7,$s,n,:=,", *(ut16 *)buf & 0xff);
  return op->size;
 case 0xa:
  op->type = R_ANAL_OP_TYPE_XOR;
  op->cycles = 1;
  r_strbuf_setf (&op->esil, "0x%x,wreg,^=,$z,z,:=,7,$s,n,:=,", *(ut16 *)buf & 0xff);
  return op->size;
 case 0x9:
  op->type = R_ANAL_OP_TYPE_OR;
  op->cycles = 1;
  r_strbuf_setf (&op->esil, "0x%x,wreg,^=,$z,z,:=,7,$s,n,:=,", *(ut16 *)buf & 0xff);
  return op->size;
 case 0x8:
  op->type = R_ANAL_OP_TYPE_SUB;
  op->cycles = 1;

  r_strbuf_setf (&op->esil, "wreg,0x%x,-,wreg,=,$z,z,:=,7,$s,n,:=,7,$c,c,:=,7,$o,ov,:=,", *(ut16 *)buf & 0xff);
  return op->size;
 };

 switch (b >> 6) {
 case 0x3b8:
  if (len < 4) {
   goto beach;
  }
  if (dword_instr >> 28 != 0xf) {
   goto beach;
  }
  op->size = 4;
  op->type = R_ANAL_OP_TYPE_LOAD;
  return op->size;
 };
 switch (b >> 10) {
 case 0x17:
 case 0x16:
 case 0x15:
 case 0x13:
 case 0xb:
 case 0x1:
  op->type = R_ANAL_OP_TYPE_SUB;
  return op->size;
 case 0x14:
  op->type = R_ANAL_OP_TYPE_MOV;
  return op->size;
 case 0x12:
 case 0xf:
 case 0xa:
 case 0x8:
  op->type = R_ANAL_OP_TYPE_ADD;
  return op->size;
 case 0x9:
  op->cycles = 1;
  op->type = R_ANAL_OP_TYPE_ADD;
  return op->size;
 case 0x11:
 case 0xd:
  op->type = R_ANAL_OP_TYPE_ROL;
  return op->size;
 case 0x10:
 case 0xc:
  op->type = R_ANAL_OP_TYPE_ROR;
  return op->size;
 case 0xe:
  op->type = R_ANAL_OP_TYPE_UNK;
  return op->size;
 case 0x7:
  op->type = R_ANAL_OP_TYPE_CPL;
  return op->size;
 case 0x6:
  op->type = R_ANAL_OP_TYPE_XOR;
  return op->size;
 case 0x5:
  op->type = R_ANAL_OP_TYPE_AND;
  return op->size;
 case 0x4:
  op->type = R_ANAL_OP_TYPE_OR;
  return op->size;
 };
 switch (b >> 9) {
 case 0x37:
  op->type = R_ANAL_OP_TYPE_STORE;
  return op->size;
 case 0x36:
 case 0x35:
 case 0x34:
  op->type = R_ANAL_OP_TYPE_UNK;
  return op->size;
 case 0x33:
  op->type = R_ANAL_OP_TYPE_CJMP;
  return op->size;
 case 0x32:
 case 0x31:
 case 0x30:
  op->type = R_ANAL_OP_TYPE_CMP;
  return op->size;
 case 0x1:
  op->type = R_ANAL_OP_TYPE_MUL;
  return op->size;
 };
 switch (b >> 4) {
 case 0x10:
  op->type = R_ANAL_OP_TYPE_LOAD;
  op->cycles = 1;
  r_strbuf_setf (&op->esil, "0x%x,bsr,=,", *(ut16 *)buf & 0xf);
  return op->size;
 };
 switch (b) {
 case 0xff:
 case 0x7:
 case 0x4:
 case 0x3:
  op->type = R_ANAL_OP_TYPE_UNK;
  return op->size;
 case 0x13:
  op->type = R_ANAL_OP_TYPE_RET;
  op->cycles = 2;
  r_strbuf_setf (&op->esil, "tos,pc,=,");
  return op->size;
 case 0x12:
  op->type = R_ANAL_OP_TYPE_RET;
  op->cycles = 2;
  r_strbuf_setf (&op->esil, "tos,pc,=");
  return op->size;
 case 0x11:
 case 0x10:
  op->type = R_ANAL_OP_TYPE_RET;
  return op->size;
 case 0xf:
 case 0xe:
 case 0xd:
 case 0xc:
  op->type = R_ANAL_OP_TYPE_LOAD;
  return op->size;
 case 0xb:
 case 0xa:
 case 0x9:
 case 0x8:
  op->type = R_ANAL_OP_TYPE_STORE;
  return op->size;
 case 0x6:
  op->type = R_ANAL_OP_TYPE_POP;
  return op->size;
 case 0x5:
  op->type = R_ANAL_OP_TYPE_PUSH;
  return op->size;
 case 0x0:
  op->type = R_ANAL_OP_TYPE_NOP;
  op->cycles = 1;
  r_strbuf_setf (&op->esil, ",");
  return op->size;
 };
beach:
 op->type = R_ANAL_OP_TYPE_ILL;
 return op->size;
}
