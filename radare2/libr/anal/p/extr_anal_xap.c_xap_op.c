
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut16 ;
struct state {int s_off; int const* s_buf; scalar_t__ s_prefix; int * s_out; int member_0; } ;
struct instruction {int in_reg; int in_opcode; } ;
struct TYPE_2__ {int member_0; } ;
struct directive {int d_inst; int d_off; int size; int jump; int eob; int fail; void* type; int d_operand; TYPE_1__ member_0; } ;
typedef int ins ;
typedef int RAnalOpMask ;
typedef struct directive RAnalOp ;
typedef int RAnal ;






 void* R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_AND ;
 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_CMP ;
 void* R_ANAL_OP_TYPE_DIV ;
 void* R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_MUL ;
 void* R_ANAL_OP_TYPE_NOP ;
 void* R_ANAL_OP_TYPE_OR ;
 void* R_ANAL_OP_TYPE_POP ;
 void* R_ANAL_OP_TYPE_PUSH ;
 void* R_ANAL_OP_TYPE_SUB ;
 void* R_ANAL_OP_TYPE_TRAP ;
 void* R_ANAL_OP_TYPE_UNK ;
 void* R_ANAL_OP_TYPE_XOR ;
 int get_operand (struct state*,struct directive*) ;
 int i2ut16 (struct instruction*) ;
 void* label_off (struct directive*) ;
 int memcpy (int*,int const*,int) ;
 int memset (struct directive*,char,int) ;
 int xap_decode (struct state*,struct directive*) ;

__attribute__((used)) static int xap_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *bytes, int len, RAnalOpMask mask) {
 struct instruction *in = (struct instruction *)bytes;
 ut16 lol, ins;
 struct directive d = {{0}};
 struct state s = {0};

 if (!anal || !op) {
  return 2;
 }

 memcpy (&ins, bytes, sizeof (ins));
 memcpy (&lol, bytes, sizeof (ins));
 s.s_buf = (void *)bytes;
 s.s_off = addr;
 s.s_out = ((void*)0);
 s.s_prefix = 0;
 memset (&d, '\0', sizeof (struct directive));
 memcpy (&d.d_inst, s.s_buf, sizeof (d.d_inst));
 s.s_off += 2;
 d.d_off = s.s_off;
 xap_decode (&s, &d);
 d.d_operand = get_operand (&s, &d);

 memset (op, 0, sizeof (RAnalOp));
 op->type = R_ANAL_OP_TYPE_UNK;
 op->size = 2;

 switch (i2ut16 (in)) {
 case 128:
  op->type = R_ANAL_OP_TYPE_NOP;
  break;
 case 130:
  op->type = R_ANAL_OP_TYPE_TRAP;
  break;
 case 131:
  op->type = R_ANAL_OP_TYPE_TRAP;
  break;
 case 129:
  op->type = R_ANAL_OP_TYPE_TRAP;
  break;
 default:
  switch (in->in_opcode) {
  case 0:
   switch (lol&0xf) {
   case 1:
   case 2:
   case 3:
   case 0xa:
    op->type = R_ANAL_OP_TYPE_PUSH;
    break;
   case 4:
   case 5:
   case 6:
   case 7:
   case 0xe:
    op->type = R_ANAL_OP_TYPE_POP;
    break;
   }
   break;
  case 1:
   op->type = R_ANAL_OP_TYPE_POP;
   break;
  case 2:
   op->type = R_ANAL_OP_TYPE_PUSH;
   break;
  case 3:
  case 4:
  case 7:
   op->type = R_ANAL_OP_TYPE_ADD;
   break;
  case 5:
  case 6:
   op->type = R_ANAL_OP_TYPE_SUB;
   break;
  case 8:
   op->type = R_ANAL_OP_TYPE_CMP;
   break;
  case 9:
   switch(in->in_reg) {
   case 0:
    op->type = R_ANAL_OP_TYPE_MUL;
    break;
   case 1:
    op->type = R_ANAL_OP_TYPE_DIV;
    break;
   case 2:
    op->type = R_ANAL_OP_TYPE_CMP;
    break;
   case 3:

    op->type = R_ANAL_OP_TYPE_CALL;
    op->jump = label_off (&d);
    if (op->jump & 1) {
     op->jump += 3;
    }
    op->fail = addr+2;
    op->eob = 1;
    break;
   }
   break;
  case 0xb:
   op->type = R_ANAL_OP_TYPE_OR;
   break;
  case 0xc:
   op->type = R_ANAL_OP_TYPE_AND;
   break;
  case 0xd:
   op->type = R_ANAL_OP_TYPE_XOR;
   break;
  case 0xe:
   switch (in->in_reg) {
   case 0:
    op->type = R_ANAL_OP_TYPE_JMP;
    op->jump = label_off (&d)+4;
    if (op->jump & 1) {
     op->jump += 3;
    }
    op->eob = 1;
    break;
   case 1:

    op->type = R_ANAL_OP_TYPE_CJMP;
    op->jump = label_off (&d);
    if (op->jump & 1) {
     op->jump += 3;
    }
    op->fail = addr + 2;
    op->eob = 1;
    break;
   case 2:

    op->type = R_ANAL_OP_TYPE_CJMP;
    op->jump = label_off (&d);
    if (op->jump & 1) {
     op->jump += 3;
    }
    op->fail = addr + 2;
    op->eob = 1;
    break;
   case 3:

    op->type = R_ANAL_OP_TYPE_CJMP;
    op->jump = label_off (&d);
    if (op->jump & 1) {
     op->jump += 3;
    }
    op->fail = addr + 2;
    op->eob = 1;
    break;
   }
   break;
  case 0xf:
   switch (in->in_reg) {
   case 0:
   case 1:
   case 2:
   case 3:
    op->type = R_ANAL_OP_TYPE_CJMP;
    op->jump = label_off (&d);
    if (op->jump & 1) {
     op->jump += 3;
    }
    op->fail = addr+2;
    break;
   }
   break;
  }
  break;
 }
 return op->size;
}
