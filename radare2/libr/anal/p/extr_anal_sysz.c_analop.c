
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int csh ;
struct TYPE_8__ {int size; int id; } ;
typedef TYPE_1__ cs_insn ;
struct TYPE_10__ {int imm; } ;
struct TYPE_9__ {int size; int fail; int jump; void* type; int opex; int esil; scalar_t__ delay; } ;
typedef int RAnalOpMask ;
typedef TYPE_2__ RAnalOp ;
typedef int RAnal ;


 int CS_ARCH_SYSZ ;
 int CS_ERR_OK ;
 int CS_MODE_BIG_ENDIAN ;
 int CS_OPT_DETAIL ;
 int CS_OPT_ON ;
 TYPE_7__ INSOP (int ) ;
 int R_ANAL_OP_MASK_OPEX ;
 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_ILL ;
 void* R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_NULL ;
 int UT64_MAX ;
 int cs_close (int *) ;
 int cs_disasm (int ,int const*,int,int,int,TYPE_1__**) ;
 int cs_free (TYPE_1__*,int) ;
 int cs_open (int ,int,int *) ;
 int cs_option (int ,int ,int ) ;
 int opex (int *,int ,TYPE_1__*) ;
 int r_strbuf_init (int *) ;

__attribute__((used)) static int analop(RAnal *a, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 csh handle;
 cs_insn *insn;
 int mode = CS_MODE_BIG_ENDIAN;
 int ret = cs_open (CS_ARCH_SYSZ, mode, &handle);
 op->type = R_ANAL_OP_TYPE_NULL;
 op->size = 0;
 op->delay = 0;
 r_strbuf_init (&op->esil);
 if (ret == CS_ERR_OK) {
  cs_option (handle, CS_OPT_DETAIL, CS_OPT_ON);

  int n = cs_disasm (handle, (const ut8*)buf, len, addr, 1, &insn);
  if (n < 1) {
   op->type = R_ANAL_OP_TYPE_ILL;
  } else {
   if (mask & R_ANAL_OP_MASK_OPEX) {
    opex (&op->opex, handle, insn);
   }
   op->size = insn->size;
   switch (insn->id) {
   case 160:
   case 162:
    op->type = R_ANAL_OP_TYPE_CALL;
    break;
   case 164:
    op->type = R_ANAL_OP_TYPE_JMP;
    break;
   case 161:
   case 178:
   case 176:
   case 177:
   case 173:
   case 175:
   case 174:
   case 172:
   case 170:
   case 171:
   case 167:
   case 169:
   case 168:
   case 166:
   case 165:
   case 179:
   case 163:
   case 159:
   case 158:
    op->type = R_ANAL_OP_TYPE_CJMP;
    break;
   case 156:
   case 154:
   case 139:
   case 152:
   case 140:
   case 153:
   case 137:
   case 150:
   case 136:
   case 149:
   case 138:
   case 151:
   case 135:
   case 148:
   case 133:
   case 146:
   case 134:
   case 147:
   case 131:
   case 144:
   case 130:
   case 143:
   case 132:
   case 145:
   case 129:
   case 142:
   case 128:
   case 141:
   case 155:
    op->type = R_ANAL_OP_TYPE_CJMP;
    op->jump = INSOP(0).imm;
    op->fail = addr+op->size;
    break;
   case 157:
    op->type = R_ANAL_OP_TYPE_JMP;
    op->jump = INSOP(0).imm;
    op->fail = UT64_MAX;
    break;
   }
  }
  cs_free (insn, n);
  cs_close (&handle);
 }
 return op->size;
}
