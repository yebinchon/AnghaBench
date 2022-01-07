
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_12__ {int const op; int const mask; int arg1; int arg2; int len; int instr; int type; int cycles; scalar_t__ string; } ;
struct TYPE_11__ {int reg; } ;
struct TYPE_10__ {int jump; int fail; int ptr; int val; int nopcode; int size; int id; int eob; int stackptr; int refptr; int mnemonic; void* stackop; int cond; int family; int type; int failcycles; int cycles; scalar_t__ delay; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef TYPE_2__ RAnal ;


 int A_ADDR11 ;
 int A_ADDR16 ;




 int A_OFFSET ;
 int A_RI ;
 int A_RN ;
 int R_ANAL_COND_AL ;
 int R_ANAL_COND_EQ ;
 int R_ANAL_COND_HS ;
 int R_ANAL_COND_LO ;
 int R_ANAL_COND_NE ;
 int R_ANAL_OP_FAMILY_CPU ;
 int R_ANAL_OP_MASK_ESIL ;
 int R_ANAL_OP_MASK_HINT ;
 void* R_ANAL_STACK_INC ;
 TYPE_9__* _8051_ops ;
 int analop_esil (TYPE_2__*,TYPE_1__*,int ,int*) ;
 void* arg_addr11 (int ,int const*) ;
 int const arg_bit (int const) ;
 void* arg_offset (int ,int const) ;
 int i8051_reg_read (int ,char*) ;
 void* map_direct_addr (TYPE_2__*,int const) ;
 int memcpy (int*,int const*,int) ;
 int r_8051_disas (int ,int const*,int,int*) ;
 int set_cpu_model (TYPE_2__*,int) ;

__attribute__((used)) static int i8051_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 set_cpu_model (anal, 0);

 int i = 0;
 while (_8051_ops[i].string && _8051_ops[i].op != (buf[0] & ~_8051_ops[i].mask)) {
  i++;
 }

 op->jump = op->fail = -1;
 op->ptr = op->val = -1;

 ut8 arg1 = _8051_ops[i].arg1;
 ut8 arg2 = _8051_ops[i].arg2;

 op->delay = 0;
 op->cycles = _8051_ops[i].cycles;
 op->failcycles = _8051_ops[i].cycles;
 op->nopcode = 1;
 op->size = _8051_ops[i].len;
 op->type = _8051_ops[i].type;
 op->family = R_ANAL_OP_FAMILY_CPU;
 op->id = i;

 switch (_8051_ops[i].instr) {
 default:
  op->cond = R_ANAL_COND_AL;
 break;
 case 140:
 case 139:
 case 138:
 case 137:
 case 132:
  op->cond = R_ANAL_COND_NE;
 break;
 case 134:
 case 131:
  op->cond = R_ANAL_COND_EQ;
 break; case 136:
  op->cond = R_ANAL_COND_HS;
 break; case 133:
  op->cond = R_ANAL_COND_LO;
 }

 switch (_8051_ops[i].instr) {
 default:
  op->eob = 0;
 break;
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
  op->eob = 1;
 }



 switch (arg1) {
 default:
 break; case 144:
  op->ptr = map_direct_addr (anal, buf[1]);
 break; case 145:
  op->ptr = map_direct_addr (anal, arg_bit (buf[1]));
 break; case 142:
  op->val = buf[1];
 break; case 143:
  op->val = buf[1] * 256 + buf[2];
  op->ptr = op->val + i8051_reg_read (anal->reg, "_xdata");
 }

 switch (arg2) {
 default:
 break; case 144:
  if (arg1 == A_RI || arg1 == A_RN) {
   op->ptr = map_direct_addr (anal, buf[1]);
  } else if (arg1 != 144) {
   op->ptr = map_direct_addr (anal, buf[2]);
  }
 break; case 145:
  op->ptr = arg_bit ((arg1 == A_RI || arg1 == A_RN) ? buf[1] : buf[2]);
  op->ptr = map_direct_addr (anal, op->ptr);
 break; case 142:
  op->val = (arg1 == A_RI || arg1 == A_RN) ? buf[1] : buf[2];
 }

 switch(_8051_ops[i].instr) {
 default:
 break; case 129:
  op->stackop = R_ANAL_STACK_INC;
  op->stackptr = 1;
 break; case 130:
  op->stackop = R_ANAL_STACK_INC;
  op->stackptr = -1;
 break; case 128:
  op->stackop = R_ANAL_STACK_INC;
  op->stackptr = -2;
 break; case 141:
  op->stackop = R_ANAL_STACK_INC;
  op->stackptr = 2;
  if (arg1 == A_ADDR11) {
   op->jump = arg_addr11 (addr + op->size, buf);
   op->fail = addr + op->size;
  } else if (arg1 == A_ADDR16) {
   op->jump = 0x100 * buf[1] + buf[2];
   op->fail = addr + op->size;
  }
 break; case 135:
  if (arg1 == A_ADDR11) {
   op->jump = arg_addr11 (addr + op->size, buf);
   op->fail = addr + op->size;
  } else if (arg1 == A_ADDR16) {
   op->jump = 0x100 * buf[1] + buf[2];
   op->fail = addr + op->size;
  } else if (arg1 == A_OFFSET) {
   op->jump = arg_offset (addr + op->size, buf[1]);
   op->fail = addr + op->size;
  }
 break;
 case 140:
 case 139:
 case 136:
 case 133:
 case 131:
 case 132:
 case 138:
 case 137:
 case 134:
  op->jump = arg_offset (addr + op->size, buf[op->size - 1]);
  op->fail = addr + op->size;
 }

 if (op->ptr != -1 && op->refptr == 0) {
  op->refptr = 1;
 }

 if (mask & R_ANAL_OP_MASK_ESIL) {
  ut8 copy[3] = {0, 0, 0};
  memcpy (copy, buf, len >= 3 ? 3 : len);
  analop_esil (anal, op, addr, copy);
 }

 int olen = 0;
 op->mnemonic = r_8051_disas (addr, buf, len, &olen);
 op->size = olen;

 if (mask & R_ANAL_OP_MASK_HINT) {

 }

 return op->size;
}
