
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef scalar_t__ st8 ;
struct TYPE_4__ {int size; int refptr; int ptr; int eob; int stackptr; int jump; void* type; void* stackop; int fail; scalar_t__ addr; int nopcode; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 void* R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_AND ;
 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_CCALL ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_CRET ;
 void* R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_LOAD ;
 void* R_ANAL_OP_TYPE_MOV ;
 void* R_ANAL_OP_TYPE_NOP ;
 void* R_ANAL_OP_TYPE_POP ;
 void* R_ANAL_OP_TYPE_PUSH ;
 void* R_ANAL_OP_TYPE_RET ;
 void* R_ANAL_OP_TYPE_ROL ;
 void* R_ANAL_OP_TYPE_ROR ;
 void* R_ANAL_OP_TYPE_STORE ;
 void* R_ANAL_OP_TYPE_SUB ;
 void* R_ANAL_OP_TYPE_SWI ;
 void* R_ANAL_OP_TYPE_TRAP ;
 void* R_ANAL_OP_TYPE_UJMP ;
 void* R_ANAL_OP_TYPE_UNK ;
 void* R_ANAL_OP_TYPE_XOR ;
 void* R_ANAL_STACK_INC ;
 int memset (TYPE_1__*,char,int) ;
 int z80_op_size (int const*,int,int*,int *) ;

__attribute__((used)) static int z80_anal_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *data, int len, RAnalOpMask mask) {
 int ilen = 0;
 z80_op_size (data, len, &ilen, &op->nopcode);

 memset (op, '\0', sizeof (RAnalOp));
 op->addr = addr;
 op->size = ilen;
 op->type = R_ANAL_OP_TYPE_UNK;

 switch (data[0]) {
 case 0x00:
  op->type = R_ANAL_OP_TYPE_NOP;
  break;
 case 0x03:
 case 0x04:
 case 0x0c:
 case 0x13:
 case 0x14:
 case 0x1c:
 case 0x23:
 case 0x24:
 case 0x2c:
 case 0x33:
 case 0x34:
 case 0x3c:
  op->type = R_ANAL_OP_TYPE_ADD;
  break;
 case 0x09:
 case 0x19:
 case 0x29:
 case 0x39:
 case 0x80:
 case 0x81:
 case 0x82:
 case 0x83:
 case 0x84:
 case 0x85:
 case 0x86:
 case 0x87:
 case 0xc6:
  op->type = R_ANAL_OP_TYPE_ADD;
  break;
 case 0x90:
 case 0x91:
 case 0x92:
 case 0x93:
 case 0x94:
 case 0x95:
 case 0x96:
 case 0x97:
 case 0xd6:
  op->type = R_ANAL_OP_TYPE_SUB;
                break;
 case 0x22:
  op->type = R_ANAL_OP_TYPE_STORE;
  op->refptr = 2;
  op->ptr = data[1] | data[2] << 8;
  break;
 case 0x32:
  op->type = R_ANAL_OP_TYPE_STORE;
  op->refptr = 1;
  op->ptr = data[1] | data[2] << 8;
  break;
 case 0x2a:
  op->type = R_ANAL_OP_TYPE_LOAD;
  op->refptr = 2;
  op->ptr = data[1] | data[2] << 8;
  break;
 case 0x3a:
  op->type = R_ANAL_OP_TYPE_LOAD;
  op->refptr = 1;
  op->ptr = data[1] | data[2] << 8;
  break;
 case 0xc0:
 case 0xc8:
 case 0xd0:
 case 0xd8:
 case 0xe0:
 case 0xe8:
 case 0xf0:
 case 0xf8:
  op->type = R_ANAL_OP_TYPE_CRET;
  break;
 case 0xc9:
  op->type = R_ANAL_OP_TYPE_RET;
  op->eob = 1;
  op->stackop = R_ANAL_STACK_INC;
  op->stackptr = -2;
  break;
 case 0xed:
  switch(data[1]) {
  case 0x43:
  case 0x53:
  case 0x63:
  case 0x73:
   op->type = R_ANAL_OP_TYPE_STORE;
   op->refptr = 2;
   op->ptr = data[2] | data[3] << 8;
   break;
  case 0x4b:
  case 0x5b:
  case 0x6b:
  case 0x7b:
   op->type = R_ANAL_OP_TYPE_LOAD;
   op->refptr = 2;
   op->ptr = data[2] | data[3] << 8;
   break;
  case 0x45:
  case 0x4d:
   op->type = R_ANAL_OP_TYPE_RET;
   op->eob = 1;
   break;
  }
  break;
 case 0xdd:
 case 0xfd:
  switch (data[1]) {
  case 0x22:
   op->type = R_ANAL_OP_TYPE_STORE;
   op->refptr = 2;
   op->ptr = data[2] | data[3] << 8;
   break;
  case 0x2a:
   op->type = R_ANAL_OP_TYPE_LOAD;
   op->refptr = 2;
   op->ptr = data[2] | data[3] << 8;
   break;
  }
  break;
 case 0x05:
 case 0x0b:
 case 0x0d:
 case 0x15:
 case 0x1b:
 case 0x1d:
 case 0x25:
 case 0x2b:
 case 0x2d:
 case 0x35:
 case 0x3b:
 case 0x3d:

  op->type = R_ANAL_OP_TYPE_SUB;
  break;
 case 0xc5:
 case 0xd5:
 case 0xe5:
 case 0xf5:
  op->type = R_ANAL_OP_TYPE_PUSH;
  break;
 case 0xc1:
 case 0xd1:
 case 0xe1:
 case 0xf1:
  op->type = R_ANAL_OP_TYPE_POP;
  break;

 case 0x40:
 case 0x49:
 case 0x52:
 case 0x5b:
 case 0x64:
 case 0x6d:
 case 0x7f:
  break;
 case 0x76:
  op->type = R_ANAL_OP_TYPE_TRAP;
  break;

 case 0x10:
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = addr + (st8)data[1] + ilen ;
  op->fail = addr + ilen;
  break;
 case 0x18:
  op->type = R_ANAL_OP_TYPE_JMP;
  op->jump = addr + (st8)data[1] + ilen;
  break;

 case 0x20:
 case 0x28:
 case 0x30:
 case 0x38:
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = addr + ((len>1)? (st8)data[1]:0) + ilen;
  op->fail = addr + ilen;
  break;


 case 0xc2:
 case 0xca:
 case 0xd2:
 case 0xda:
 case 0xe2:
 case 0xea:
 case 0xf2:
 case 0xfa:
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = (len > 2)? data[1] | data[2] << 8: 0;
  op->fail = addr + ilen;
  break;
 case 0xc3:
  op->type = R_ANAL_OP_TYPE_JMP;
  op->jump = (len > 2)? data[1] | data[2] << 8: 0;
  break;
 case 0xe9:
  op->type = R_ANAL_OP_TYPE_UJMP;
  break;

 case 0xc7:
  op->jump = 0x00;
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 case 0xcf:
  op->jump = 0x08;
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 case 0xd7:
  op->jump = 0x10;
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 case 0xdf:
  op->jump = 0x18;
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 case 0xe7:
  op->jump = 0x20;
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 case 0xef:
  op->jump = 0x28;
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 case 0xf7:
  op->jump = 0x30;
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 case 0xff:
  op->jump = 0x38;
  op->type = R_ANAL_OP_TYPE_SWI;
  break;


 case 0xc4:
 case 0xd4:
 case 0xe4:
 case 0xf4:

 case 0xcc:
 case 0xdc:
 case 0xec:
 case 0xfc:
  op->type = R_ANAL_OP_TYPE_CCALL;
  op->jump = (len>2)? data[1] | data[2] << 8: 0;
  op->fail = addr + ilen;
  break;


 case 0xcd:
  op->type = R_ANAL_OP_TYPE_CALL;
  op->stackop = R_ANAL_STACK_INC;
  op->stackptr = 2;
  op->jump = data[1] | data[2] << 8;
  break;
 case 0xcb:
  switch(data[1]/8) {
  case 0:
  case 2:
  case 4:
  case 6:
   op->type = R_ANAL_OP_TYPE_ROL;
   break;
  case 1:
  case 3:
  case 5:
  case 7:
   op->type = R_ANAL_OP_TYPE_ROR;
   break;
  case 8:
  case 9:
  case 10:
  case 11:
  case 12:
  case 13:
  case 14:
  case 15:
   op->type = R_ANAL_OP_TYPE_AND;
   break;
  case 16:
  case 17:
  case 18:
  case 19:
  case 20:
  case 21:
  case 22:
  case 23:
   op->type = R_ANAL_OP_TYPE_XOR;
   break;
  case 24:
  case 25:
  case 26:
  case 27:
  case 28:
  case 29:
  case 30:
  case 31:
   op->type = R_ANAL_OP_TYPE_MOV;
   break;
  }
  break;
 }
 return ilen;
}
