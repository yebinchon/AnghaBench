
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ebc_command_t ;
struct TYPE_7__ {int jump; int fail; int ptr; int val; int size; void* type; int addr; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;
 int const EBC_OPCODE_MASK ;
 void* R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_AND ;
 void* R_ANAL_OP_TYPE_CMP ;
 void* R_ANAL_OP_TYPE_MOV ;
 void* R_ANAL_OP_TYPE_MUL ;
 void* R_ANAL_OP_TYPE_OR ;
 void* R_ANAL_OP_TYPE_POP ;
 void* R_ANAL_OP_TYPE_PUSH ;
 void* R_ANAL_OP_TYPE_RET ;
 void* R_ANAL_OP_TYPE_SHL ;
 void* R_ANAL_OP_TYPE_SHR ;
 void* R_ANAL_OP_TYPE_SUB ;
 void* R_ANAL_OP_TYPE_SWI ;
 void* R_ANAL_OP_TYPE_UNK ;
 void* R_ANAL_OP_TYPE_XOR ;
 int ebc_anal_call (TYPE_1__*,int ,int const*) ;
 int ebc_anal_jmp (TYPE_1__*,int ,int const*) ;
 int ebc_anal_jmp8 (TYPE_1__*,int ,int const*) ;
 int ebc_decode_command (int const*,int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int ebc_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 int ret;
 ebc_command_t cmd;
 ut8 opcode = buf[0] & EBC_OPCODE_MASK;

 if (!op) {
  return 2;
 }

 memset(op, 0, sizeof (RAnalOp));
 op->addr = addr;
 op->jump = op->fail = -1;
 op->ptr = op->val = -1;

 ret = op->size = ebc_decode_command(buf, &cmd);

 if (ret < 0) {
  return ret;
 }

 switch (opcode) {
 case 154:
  ebc_anal_jmp8(op, addr, buf);
  break;
 case 155:
  ebc_anal_jmp(op, addr, buf);
  break;
 case 152:
 case 138:
 case 150:
 case 143:
 case 153:
 case 139:
 case 151:
 case 145:
 case 140:
 case 141:
 case 144:
 case 146:
 case 147:
 case 149:
 case 148:
 case 142:
  op->type = R_ANAL_OP_TYPE_MOV;
  break;
 case 132:
  op->type = R_ANAL_OP_TYPE_RET;
  break;
 case 165:
 case 158:
 case 164:
 case 156:
 case 157:
 case 163:
 case 161:
 case 162:
 case 159:
 case 160:
  op->type = R_ANAL_OP_TYPE_CMP;
  break;
 case 130:
  op->type = R_ANAL_OP_TYPE_SHR;
  break;
 case 131:
  op->type = R_ANAL_OP_TYPE_SHL;
  break;
 case 135:
  op->type = R_ANAL_OP_TYPE_OR;
  break;
 case 128:
  op->type = R_ANAL_OP_TYPE_XOR;
  break;
 case 137:
  op->type = R_ANAL_OP_TYPE_MUL;
  break;
 case 133:
  op->type = R_ANAL_OP_TYPE_PUSH;
  break;
 case 134:
  op->type = R_ANAL_OP_TYPE_POP;
  break;
 case 168:
  op->type = R_ANAL_OP_TYPE_AND;
  break;
 case 169:
  op->type = R_ANAL_OP_TYPE_ADD;
  break;
 case 129:
  op->type = R_ANAL_OP_TYPE_SUB;
  break;
 case 136:
  op->type = R_ANAL_OP_TYPE_SUB;
  break;
 case 166:
  ebc_anal_call(op, addr, buf);
  break;
 case 167:
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 default:
  op->type = R_ANAL_OP_TYPE_UNK;
  break;
 }

 return ret;
}
