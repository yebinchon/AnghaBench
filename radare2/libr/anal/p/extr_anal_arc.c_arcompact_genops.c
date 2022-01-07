
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
struct TYPE_7__ {int format; int subopcode; int c; int a; int b; int mode_n; int limm; int imm; int cond; int mode_m; int member_0; } ;
typedef TYPE_1__ arc_fields ;
struct TYPE_8__ {int size; int refptr; int val; void* type; int fail; int jump; void* cond; int ptr; } ;
typedef TYPE_2__ RAnalOp ;


 int ARC_REG_LIMM ;
 int ARC_REG_PCL ;
 void* R_ANAL_OP_TYPE_ABS ;
 void* R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_AND ;
 int R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_CMOV ;
 void* R_ANAL_OP_TYPE_CMP ;
 void* R_ANAL_OP_TYPE_ILL ;
 void* R_ANAL_OP_TYPE_IO ;
 int R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_MOV ;
 void* R_ANAL_OP_TYPE_MUL ;
 void* R_ANAL_OP_TYPE_NOT ;
 void* R_ANAL_OP_TYPE_NULL ;
 void* R_ANAL_OP_TYPE_OR ;
 void* R_ANAL_OP_TYPE_RET ;
 void* R_ANAL_OP_TYPE_ROL ;
 void* R_ANAL_OP_TYPE_ROR ;
 void* R_ANAL_OP_TYPE_SAL ;
 void* R_ANAL_OP_TYPE_SAR ;
 void* R_ANAL_OP_TYPE_SHR ;
 void* R_ANAL_OP_TYPE_SUB ;
 void* R_ANAL_OP_TYPE_SWI ;
 void* R_ANAL_OP_TYPE_TRAP ;
 void* R_ANAL_OP_TYPE_XCHG ;
 void* R_ANAL_OP_TYPE_XOR ;
 void* SEX_S12 (int) ;
 int SEX_S13 (int) ;
 int arccompact_dump_fields (int,int*,TYPE_1__*) ;
 int arcompact_genops_jmp (TYPE_2__*,int,TYPE_1__*,int ) ;
 void* map_cond2radare (int) ;

__attribute__((used)) static int arcompact_genops(RAnalOp *op, ut64 addr, ut32 words[2]) {
 arc_fields fields = {0};

 fields.format = (words[0] & 0x00c00000) >> 22;
 fields.subopcode = (words[0] & 0x003f0000) >> 16;
 fields.c = (words[0] & 0x00000fc0) >> 6;
 fields.a = (words[0] & 0x0000003f);
 fields.b = (words[0] & 0x07000000) >> 24 | (words[0] & 0x7000) >> 9;
 fields.mode_n = 0;


 if (fields.b == ARC_REG_LIMM) {
  op->size = 8;
  fields.limm = words[1];

 } else if ((fields.format == 0 || fields.format == 1) && (fields.a == ARC_REG_LIMM)) {
  op->size = 8;
  fields.limm = words[1];
 } else if ((fields.format == 0) && (fields.c == ARC_REG_LIMM)) {
  op->size = 8;
  fields.limm = words[1];
 } else if ((fields.format == 3) && ((fields.a & 0x20) == 0x20) && (fields.c == ARC_REG_LIMM)) {
  op->size = 8;
  fields.limm = words[1];
 }

 if (fields.format == 1) {

  fields.imm = fields.c;
 } else if (fields.format == 2) {

  fields.imm = SEX_S12 (fields.c | fields.a << 6);
 }

 switch (fields.subopcode) {
 case 0x00:
  if ((fields.format == 1 || fields.format == 2) && fields.b == ARC_REG_PCL) {

   op->ptr = (addr & ~3) + fields.imm;
   op->refptr = 1;
  }
 case 0x01:
 case 0x14:
 case 0x15:
 case 0x16:
  op->type = R_ANAL_OP_TYPE_ADD;
  break;
 case 0x02:
 case 0x03:
 case 0x0e:
 case 0x17:
 case 0x18:
 case 0x19:
  op->type = R_ANAL_OP_TYPE_SUB;
  break;
 case 0x04:
 case 0x06:
 case 0x10:
 case 0x13:
  op->type = R_ANAL_OP_TYPE_AND;
  break;
 case 0x05:
 case 0x0f:
  op->type = R_ANAL_OP_TYPE_OR;
  break;
 case 0x07:
 case 0x12:
  op->type = R_ANAL_OP_TYPE_XOR;
  break;
 case 0x08:
 case 0x09:
  op->type = R_ANAL_OP_TYPE_CMOV;
  break;
 case 0x0a:
  if (fields.format == 2) {
   op->type = R_ANAL_OP_TYPE_MOV;
   op->val = SEX_S12 (fields.a << 6 | fields.c);
  } else if (fields.format == 3) {
   fields.cond = fields.a & 0x1f;
   op->cond = map_cond2radare (fields.cond);
   op->type = R_ANAL_OP_TYPE_CMOV;
   if ((fields.a & 0x20)) {

    op->val = fields.c;
   } else if (fields.c == ARC_REG_LIMM) {

    op->val = fields.limm;
   }
  }
  break;
 case 0x0b:
 case 0x0c:
 case 0x0d:
 case 0x11:
  op->type = R_ANAL_OP_TYPE_CMP;
  break;
 case 0x1a:
 case 0x1b:
 case 0x1c:
 case 0x1d:
  op->type = R_ANAL_OP_TYPE_MUL;
  break;
 case 0x21:
  fields.mode_n = 1;

 case 0x20:
  fields.mode_m = (words[0] & 0x20) >> 5;
  arcompact_genops_jmp (op, addr, &fields, R_ANAL_OP_TYPE_JMP);
  break;
 case 0x23:
  fields.mode_n = 1;

 case 0x22:
  fields.mode_m = (words[0] & 0x20) >> 5;
  arcompact_genops_jmp (op, addr, &fields, R_ANAL_OP_TYPE_CALL);
  break;
 case 0x1e:
 case 0x1f:
 case 0x24:
 case 0x25:
 case 0x26:
 case 0x27:
 case 0x2c:
 case 0x2d:
 case 0x2e:
 case 0x38:
 case 0x39:
 case 0x3a:
 case 0x3b:
 case 0x3c:
 case 0x3d:
 case 0x3e:
 case 0x3f:
  op->type = R_ANAL_OP_TYPE_ILL;
  break;
 case 0x28:


  switch (fields.format) {
  case 2:
   fields.imm = SEX_S13 ((fields.c | (fields.a << 6)) << 1);
   op->jump = (addr & ~3) + fields.imm;
   op->type = R_ANAL_OP_TYPE_CJMP;
   op->fail = addr + op->size;
   break;
  case 3:
   fields.imm = fields.c << 1;
   fields.cond = fields.a & 0x1f;
   op->cond = map_cond2radare (fields.a & 0x1f);
   op->jump = (addr & ~3) + fields.imm;
   op->type = R_ANAL_OP_TYPE_CJMP;
   op->fail = addr + op->size;
   break;
  default:
   op->type = R_ANAL_OP_TYPE_ILL;
   break;
  }
  break;
 case 0x29:
  op->type = R_ANAL_OP_TYPE_MOV;
  break;
 case 0x2a:
 case 0x2b:
  op->type = R_ANAL_OP_TYPE_IO;
  break;
 case 0x2f:
  switch (fields.a) {
  case 0:
   op->type = R_ANAL_OP_TYPE_SAL;
   break;
  case 1:
   op->type = R_ANAL_OP_TYPE_SAR;
   break;
  case 2:
   op->type = R_ANAL_OP_TYPE_SHR;
   break;
  case 3:
  case 4:
   op->type = R_ANAL_OP_TYPE_ROR;
   break;
  case 5:
  case 6:
  case 7:
  case 8:

   op->type = R_ANAL_OP_TYPE_MOV;

   break;
  case 9:
   op->type = R_ANAL_OP_TYPE_ABS;
   break;
  case 0xa:
   op->type = R_ANAL_OP_TYPE_NOT;
   break;
  case 0xb:
   op->type = R_ANAL_OP_TYPE_ROL;
   break;
  case 0xc:
   op->type = R_ANAL_OP_TYPE_XCHG;
   break;
  case 0x3f:
   switch (fields.b) {
   case 1:

    op->type = R_ANAL_OP_TYPE_NULL;
    break;
   case 2:
    op->type = R_ANAL_OP_TYPE_SWI;
    break;
   case 3:

    op->type = R_ANAL_OP_TYPE_NULL;
    break;
   case 4:
    op->type = R_ANAL_OP_TYPE_RET;
    break;
   case 5:
    op->type = R_ANAL_OP_TYPE_TRAP;
    break;
   default:
    op->type = R_ANAL_OP_TYPE_ILL;
    break;
   }
   break;
  default:
   op->type = R_ANAL_OP_TYPE_ILL;
   break;
  }
  break;
 case 0x30:
 case 0x31:
 case 0x32:
 case 0x33:
 case 0x34:
 case 0x35:
 case 0x36:
 case 0x37:
  op->type = R_ANAL_OP_TYPE_MOV;
  break;
 }

 arccompact_dump_fields (addr, words, &fields);
 return op->size;
}
