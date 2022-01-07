
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
struct propeller_cmd {int size; int ptr; int val; int opcode; int dst; int src; int type; int fail; int jump; int immed; int addr; } ;
typedef int cmd ;
typedef int RAnalOpMask ;
typedef struct propeller_cmd RAnalOp ;
typedef int RAnal ;
 int R_ANAL_OP_TYPE_ADD ;
 int R_ANAL_OP_TYPE_AND ;
 int R_ANAL_OP_TYPE_CJMP ;
 int R_ANAL_OP_TYPE_CMP ;
 int R_ANAL_OP_TYPE_MOV ;
 int R_ANAL_OP_TYPE_OR ;
 int R_ANAL_OP_TYPE_RET ;
 int R_ANAL_OP_TYPE_ROL ;
 int R_ANAL_OP_TYPE_ROR ;
 int R_ANAL_OP_TYPE_SUB ;
 int R_ANAL_OP_TYPE_UJMP ;
 int R_ANAL_OP_TYPE_UNK ;
 int R_ANAL_OP_TYPE_XOR ;
 int UT64_MAX ;
 int memset (struct propeller_cmd*,int ,int) ;
 int propeller_decode_command (int const*,struct propeller_cmd*) ;

__attribute__((used)) static int propeller_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 int ret;
 struct propeller_cmd cmd;

 memset (&cmd, 0, sizeof (cmd));
 memset (op, 0, sizeof (RAnalOp));

 ret = op->size = propeller_decode_command (buf, &cmd);

 if (ret < 0) {
  return ret;
 }

 op->addr = addr;
 op->jump = op->fail = UT64_MAX;
 op->ptr = op->val = -1;

 switch (cmd.opcode) {
 case 133:
 case 132:
 case 131:
 case 130:
 case 158:
 case 157:
  op->type = R_ANAL_OP_TYPE_CMP;
  break;
 case 161:
 case 159:
 case 160:
  op->type = R_ANAL_OP_TYPE_ADD;
  break;
 case 144:
  op->type = R_ANAL_OP_TYPE_OR;
  break;
 case 143:
 case 138:
 case 136:
  op->type = R_ANAL_OP_TYPE_ROL;
  break;
 case 142:
 case 137:
 case 135:
  op->type = R_ANAL_OP_TYPE_ROR;
  break;
 case 145:
  op->type = R_ANAL_OP_TYPE_AND;
  break;
 case 128:
  op->type = R_ANAL_OP_TYPE_XOR;
  break;
 case 162:
 case 151:
 case 152:
 case 154:
 case 153:
 case 141:
 case 140:
 case 139:
 case 150:
 case 149:
 case 148:
 case 147:
 case 129:
 case 146:
  if (cmd.opcode == 150 && cmd.dst == 0x44 && cmd.src == 0x3c) {
   op->type = R_ANAL_OP_TYPE_RET;
  } else {
   op->type = R_ANAL_OP_TYPE_MOV;
  }
  break;
 case 134:
  op->type = R_ANAL_OP_TYPE_SUB;
  break;
 case 155:
 case 156:
  if (cmd.immed == 0) {
   op->type = R_ANAL_OP_TYPE_CJMP;
   op->jump = 0x20 + cmd.src;
   op->fail = addr + 2;
  } else {
   op->type = R_ANAL_OP_TYPE_UJMP;
   op->fail = addr + 2;
  }
  break;
 default:
  op->type = R_ANAL_OP_TYPE_UNK;
  break;
 }

 return ret;
}
