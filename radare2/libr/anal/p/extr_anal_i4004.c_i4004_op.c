
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int const ut16 ;
typedef int basm ;
struct TYPE_3__ {int size; int jump; int fail; int val; void* type; int esil; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 void* R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_ILL ;
 void* R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_LOAD ;
 void* R_ANAL_OP_TYPE_MOV ;
 void* R_ANAL_OP_TYPE_NOP ;
 void* R_ANAL_OP_TYPE_RET ;
 void* R_ANAL_OP_TYPE_RJMP ;
 void* R_ANAL_OP_TYPE_SHL ;
 void* R_ANAL_OP_TYPE_SHR ;
 void* R_ANAL_OP_TYPE_SUB ;
 void* R_ANAL_OP_TYPE_XCHG ;
 int * i4004_e ;
 int * i4004_f ;
 int i4004_get_ins_len (int const) ;
 int r_strbuf_init (int *) ;
 int snprintf (char*,size_t const,char*,int,...) ;
 int strcmp (char*,char*) ;
 int strncpy (char*,int ,size_t const) ;

__attribute__((used)) static int i4004_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 char basm[128];
 const size_t basz = sizeof (basm)-1;
 int rlen = i4004_get_ins_len (*buf);
 if (!op) {
  return 2;
 }
 r_strbuf_init (&op->esil);
 ut8 high = (*buf & 0xf0)>>4;
 ut8 low = (*buf & 0xf);
 basm[0] = 0;

 if (rlen > len) {
  return op->size = 0;
 }
 switch (high) {
 case 0:
  if (low) {
   op->type = R_ANAL_OP_TYPE_ILL;
  } else {
   op->type = R_ANAL_OP_TYPE_NOP;
  }
  break;
 case 1:
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = (addr & (~0xFF)) + buf[1];
  op->fail = addr + rlen;
  break;
 case 2:
  if (rlen == 1) {
   snprintf (basm, basz, "scr r%d", (low & 0xe));
  } else {
   op->type = R_ANAL_OP_TYPE_MOV;
   op->val = buf[1];
   snprintf (basm, basz, "fim r%d, 0x%02x", (low & 0xe), buf[1]);
  }
  break;
 case 3:
  if (low & 1) {
   op->type = R_ANAL_OP_TYPE_RJMP;
  } else {
   op->type = R_ANAL_OP_TYPE_MOV;
   snprintf (basm, basz, "fin r%d", (low & 0xe));
  }
  break;
 case 4:
  op->type = R_ANAL_OP_TYPE_JMP;
  op->jump = (ut16) (low<<8) | buf[1];
  break;
 case 5:
  op->type = R_ANAL_OP_TYPE_CALL;
  op->jump = (ut16) (low<<8) | buf[1];
  op->fail = addr + rlen;
  break;
 case 6:
  op->type = R_ANAL_OP_TYPE_ADD;
  break;
 case 7:
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->fail = (addr & (~0xFF)) + buf[1];
  op->jump = addr + rlen;
  break;
 case 8:
  op->type = R_ANAL_OP_TYPE_ADD;

  break;
 case 9:
  op->type = R_ANAL_OP_TYPE_SUB;

  break;
 case 10:
  op->type = R_ANAL_OP_TYPE_MOV;
  break;
 case 11:
  op->type = R_ANAL_OP_TYPE_XCHG;
  break;
 case 12:
  op->type = R_ANAL_OP_TYPE_RET;
  break;
 case 13:
  op->type = R_ANAL_OP_TYPE_LOAD;

  break;
 case 14:
  strncpy (basm, i4004_e[low], basz);
  basm[basz] = '\0';
  break;
 case 15:
  strncpy (basm, i4004_f[low], basz);
  basm[basz] = '\0';
  if (!strcmp (basm, "dac")) {
   op->type = R_ANAL_OP_TYPE_SUB;
  }
  break;
 }
 if (!strcmp (basm, "invalid")) {
  op->type = R_ANAL_OP_TYPE_ILL;
 } else if (!strcmp (basm, "ral")) {
  op->type = R_ANAL_OP_TYPE_SHL;
 } else if (!strcmp (basm, "rar")) {
  op->type = R_ANAL_OP_TYPE_SHR;
 }
 return op->size = rlen;
}
