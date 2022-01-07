
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct h8300_cmd {int dummy; } ;
typedef int st8 ;
struct TYPE_7__ {int jump; int fail; int ptr; int val; int size; scalar_t__ type; int addr; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;
 int R_ANAL_OP_MASK_ESIL ;
 scalar_t__ R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_AND ;
 scalar_t__ R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_CMP ;
 void* R_ANAL_OP_TYPE_MOV ;
 scalar_t__ R_ANAL_OP_TYPE_MUL ;
 scalar_t__ R_ANAL_OP_TYPE_NOP ;
 scalar_t__ R_ANAL_OP_TYPE_RET ;
 scalar_t__ R_ANAL_OP_TYPE_SHL ;
 scalar_t__ R_ANAL_OP_TYPE_SHR ;
 void* R_ANAL_OP_TYPE_SUB ;
 scalar_t__ R_ANAL_OP_TYPE_UNK ;
 void* R_ANAL_OP_TYPE_XOR ;
 int analop_esil (int *,TYPE_1__*,int ,int const*) ;
 int h8300_anal_jmp (TYPE_1__*,int ,int const*) ;
 int h8300_anal_jsr (TYPE_1__*,int ,int const*) ;
 int h8300_decode_command (int const*,struct h8300_cmd*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int h8300_op(RAnal *anal, RAnalOp *op, ut64 addr,
  const ut8 *buf, int len, RAnalOpMask mask)
{
 int ret;
 ut8 opcode = buf[0];
 struct h8300_cmd cmd;

 if (!op) {
  return 2;
 }

 memset(op, 0, sizeof (RAnalOp));

 op->addr = addr;
 op->jump = op->fail = -1;
 op->ptr = op->val = -1;
 ret = op->size = h8300_decode_command(buf, &cmd);

 if (ret < 0) {
  return ret;
 }
 switch (opcode >> 4) {
 case 151:
 case 150:
 case 152:
  op->type = R_ANAL_OP_TYPE_MOV;
  break;
 case 162:
  op->type = R_ANAL_OP_TYPE_CMP;
  break;
 case 128:
  op->type = R_ANAL_OP_TYPE_XOR;
  break;
 case 183:
  op->type = R_ANAL_OP_TYPE_AND;
  break;
 case 185:
 case 186:
  op->type = R_ANAL_OP_TYPE_AND;
  break;
 case 132:
  op->type = R_ANAL_OP_TYPE_SUB;
  break;
 default:
  op->type = R_ANAL_OP_TYPE_UNK;
  break;
 };

 if (op->type != R_ANAL_OP_TYPE_UNK) {
  analop_esil(anal, op, addr, buf);
  return ret;
 }
 switch (opcode) {
 case 142:
 case 146:
 case 144:
 case 149:
 case 141:
 case 145:
 case 143:
 case 148:
 case 147:
 case 154:
 case 153:
 case 161:
  op->type = R_ANAL_OP_TYPE_MOV;
  break;
 case 138:
  op->type = R_ANAL_OP_TYPE_RET;
  break;
 case 164:
 case 163:
 case 167:
 case 168:
  op->type = R_ANAL_OP_TYPE_CMP;
  break;
 case 137:
  op->type = R_ANAL_OP_TYPE_SHL;
  break;
 case 136:
  op->type = R_ANAL_OP_TYPE_SHR;
  break;
 case 130:
 case 129:
  op->type = R_ANAL_OP_TYPE_XOR;
  break;
 case 140:
  op->type = R_ANAL_OP_TYPE_MUL;
  break;
 case 184:
  op->type = R_ANAL_OP_TYPE_AND;
  break;
 case 190:
 case 188:
 case 189:
 case 187:
  op->type = R_ANAL_OP_TYPE_ADD;
  break;
 case 131:
 case 134:
 case 135:
 case 133:
  op->type = R_ANAL_OP_TYPE_SUB;
  break;
 case 139:
  op->type = R_ANAL_OP_TYPE_NOP;
  break;
 case 157:
 case 156:
 case 155:
  h8300_anal_jsr(op, addr, buf);
  break;
 case 160:
 case 159:
 case 158:
  h8300_anal_jmp(op, addr, buf);
  break;
 case 170:
 case 169:
 case 177:
 case 175:
 case 182:
 case 181:
 case 172:
 case 180:
 case 166:
 case 165:
 case 171:
 case 173:
 case 179:
 case 174:
 case 178:
 case 176:
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = addr + 2 + (st8)(buf[1]);
  op->fail = addr + 2;
  break;
 default:
  op->type = R_ANAL_OP_TYPE_UNK;
  break;
 };
 if (mask & R_ANAL_OP_MASK_ESIL) {
  analop_esil(anal, op, addr, buf);
 }
 return ret;
}
