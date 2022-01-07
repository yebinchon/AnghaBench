
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef scalar_t__ ut32 ;
struct TYPE_11__ {int bits; int reg; int big_endian; } ;
struct TYPE_10__ {int size; int delay; int addr; int jump; int fail; int val; void* type; TYPE_2__** src; TYPE_1__* dst; int esil; } ;
struct TYPE_9__ {void* reg; } ;
struct TYPE_8__ {void* reg; } ;
typedef int RAnalOpMask ;
typedef TYPE_3__ RAnalOp ;
typedef TYPE_4__ RAnal ;


 void* R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_AND ;
 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_DIV ;
 void* R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_NOP ;
 void* R_ANAL_OP_TYPE_OR ;
 void* R_ANAL_OP_TYPE_RET ;
 void* R_ANAL_OP_TYPE_SUB ;
 void* R_ANAL_OP_TYPE_SWI ;
 void* R_ANAL_OP_TYPE_TRAP ;
 void* R_ANAL_OP_TYPE_UCALL ;
 void* R_ANAL_OP_TYPE_UNK ;
 void* R_ANAL_OP_TYPE_XOR ;
 int R_REG_TYPE_GPR ;
 int memset (TYPE_3__*,int ,int) ;
 int mips_reg_decode (int) ;
 void* r_anal_value_new () ;
 scalar_t__ r_read_ble32 (int const*,int ) ;
 void* r_reg_get (int ,int ,int ) ;
 int r_strbuf_init (int *) ;
 int r_strbuf_setf (int *,char*,scalar_t__) ;

__attribute__((used)) static int mips_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *b, int len, RAnalOpMask mask) {
 ut32 opcode;

 int optype, oplen = (anal->bits==16)?2:4;

 if (!op) {
  return oplen;
 }

 memset (op, 0, sizeof (RAnalOp));
 op->type = R_ANAL_OP_TYPE_UNK;
 op->size = oplen;
 op->delay = 0;
 op->addr = addr;
 r_strbuf_init (&op->esil);


 opcode = r_read_ble32 (b, anal->big_endian);


 if (opcode == 0) {
  op->type = R_ANAL_OP_TYPE_NOP;
  return oplen;
 }

 optype = (b[0]>>2);

 if (optype == 0) {
  int fun = b[3]&63;
  switch (fun) {
  case 0:
   break;
  case 2:
   break;
  case 3:
   break;
  case 4:
   break;
  case 6:
   break;
  case 7:
   break;
  case 8:


   if (((b[0]&3)<<3) + (b[1]>>5) == 31) {
    op->type = R_ANAL_OP_TYPE_RET;
   } else {
    op->type = R_ANAL_OP_TYPE_JMP;
   }
   op->delay = 1;
   break;
  case 9:

   op->type = R_ANAL_OP_TYPE_UCALL;
   op->delay = 1;
   break;
  case 12:
   op->type = R_ANAL_OP_TYPE_SWI;
   break;
  case 13:
   op->type = R_ANAL_OP_TYPE_TRAP;
   break;
  case 16:
  case 18:

  case 17:
  case 19:

  case 24:
  case 25:

  case 26:
  case 27:
   op->type = R_ANAL_OP_TYPE_DIV;
   break;
  case 32:
  case 33:
   op->type = R_ANAL_OP_TYPE_ADD;
   break;
  case 34:
  case 35:
   op->type = R_ANAL_OP_TYPE_SUB;
   break;
  case 36:
   op->type = R_ANAL_OP_TYPE_AND;
   break;
  case 37:
   op->type = R_ANAL_OP_TYPE_OR;
   break;
  case 38:
   op->type = R_ANAL_OP_TYPE_XOR;
   break;
  case 39:
  case 42:
  case 43:

   break;
  default:

   break;
  }

 } else
 if ((optype & 0x3e) == 2) {
  int address = (((b[0]&3)<<24)+(b[1]<<16)+(b[2]<<8)+b[3]) << 2;
  ut64 page_hack = addr & 0xf0000000;
  switch (optype) {
  case 2:
   op->type = R_ANAL_OP_TYPE_JMP;
   op->jump = page_hack + address;
   op->delay = 1;
   r_strbuf_setf (&op->esil, "0x%08x,pc,=", address);
   break;
  case 3:
   op->type = R_ANAL_OP_TYPE_CALL;
   op->jump = page_hack + address;
   op->fail = addr+8;
   op->delay = 1;
   r_strbuf_setf (&op->esil, "pc,lr,=,0x%08x,pc,=", (ut32)address);
   break;
  }

 } else if ((optype & 0x1c) == 0x1c) {
  int fun = (b[3]&63);

  switch (fun) {
  case 0:
   break;
  case 1:
   break;
  case 2:
   break;
  case 3:
   break;

  }
 } else {
  int rs = ((b[0]&3)<<3)+(b[1]>>5);
  int rt = b[1]&31;
  int imm = (b[2]<<8)+b[3];
  if (((optype >> 2) ^ 0x3) && (imm & 0x8000)) {
   imm = 0 - (0x10000 - imm);
  }
  switch (optype) {
  case 1:
  case 4:
  case 5:
  case 6:
  case 7:

   op->type = R_ANAL_OP_TYPE_CJMP;
   op->jump = addr+(imm<<2)+4;
   op->fail = addr+8;
   op->delay = 1;
   break;
  case 15:
   op->dst = r_anal_value_new ();
   op->dst->reg = r_reg_get (anal->reg, mips_reg_decode(rt), R_REG_TYPE_GPR);

   op->val = imm;
   break;
  case 9:
   op->dst = r_anal_value_new ();
   op->dst->reg = r_reg_get (anal->reg, mips_reg_decode(rt), R_REG_TYPE_GPR);

   op->src[0] = r_anal_value_new ();
   op->src[0]->reg = r_reg_get (anal->reg, mips_reg_decode(rs), R_REG_TYPE_GPR);
   op->val = imm;
   break;
  case 8:
  case 10:
  case 11:
  case 12:
  case 13:
  case 14:
  case 32:
  case 33:
  case 35:
  case 36:
  case 37:
  case 40:
  case 41:
  case 43:
  case 49:
  case 57:
   break;
  case 29:
   op->type = R_ANAL_OP_TYPE_CALL;
   op->jump = addr + 4*((b[3] | b[2]<<8 | b[1]<<16));
   op->fail = addr + 8;
   op->delay = 1;
   break;
  }

 }
 return oplen;
 return op->size;
}
