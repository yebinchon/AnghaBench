
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef scalar_t__ csh ;
struct TYPE_13__ {int size; int id; } ;
typedef TYPE_1__ cs_insn ;
struct TYPE_15__ {int cpu; int big_endian; } ;
struct TYPE_14__ {int size; int delay; int id; void* type; void* fail; void* jump; int opex; int esil; void* ptr; void* val; } ;
struct TYPE_12__ {void* imm; int type; } ;
typedef int RAnalOpMask ;
typedef TYPE_2__ RAnalOp ;
typedef TYPE_3__ RAnal ;


 int CS_ARCH_SPARC ;
 int CS_ERR_OK ;
 int CS_MODE_LITTLE_ENDIAN ;
 int CS_MODE_V9 ;
 int CS_OPT_DETAIL ;
 int CS_OPT_ON ;
 int INSCC ;
 TYPE_11__ INSOP (int) ;
 int R_ANAL_OP_MASK_OPEX ;
 int R_ANAL_OP_MASK_VAL ;
 void* R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_CMP ;
 void* R_ANAL_OP_TYPE_DIV ;
 void* R_ANAL_OP_TYPE_ILL ;
 void* R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_LOAD ;
 void* R_ANAL_OP_TYPE_MOV ;
 void* R_ANAL_OP_TYPE_MUL ;
 void* R_ANAL_OP_TYPE_NOP ;
 void* R_ANAL_OP_TYPE_NULL ;
 void* R_ANAL_OP_TYPE_OR ;
 void* R_ANAL_OP_TYPE_RET ;
 void* R_ANAL_OP_TYPE_STORE ;
 void* R_ANAL_OP_TYPE_SUB ;
 void* R_ANAL_OP_TYPE_UCALL ;
 void* R_ANAL_OP_TYPE_UNK ;
 int SPARC_CC_ICC_A ;
 int SPARC_CC_ICC_N ;
 void* UT64_MAX ;
 int cs_close (scalar_t__*) ;
 int cs_disasm (scalar_t__,int const*,int,int ,int,TYPE_1__**) ;
 int cs_free (TYPE_1__*,int) ;
 int cs_open (int ,int,scalar_t__*) ;
 int cs_option (scalar_t__,int ,int ) ;
 int op_fillval (TYPE_2__*,scalar_t__,TYPE_1__*) ;
 int opex (int *,scalar_t__,TYPE_1__*) ;
 int r_strbuf_init (int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int analop(RAnal *a, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 static csh handle = 0;
 static int omode;
 cs_insn *insn;
 int mode, n, ret;

 if (!a->big_endian) {
  return -1;
 }

 mode = CS_MODE_LITTLE_ENDIAN;
 if (!strcmp (a->cpu, "v9")) {
  mode |= CS_MODE_V9;
 }
 if (mode != omode) {
  cs_close (&handle);
  handle = 0;
  omode = mode;
 }
 if (handle == 0) {
  ret = cs_open (CS_ARCH_SPARC, mode, &handle);
  if (ret != CS_ERR_OK) {
   return -1;
  }
  cs_option (handle, CS_OPT_DETAIL, CS_OPT_ON);
 }
 op->type = R_ANAL_OP_TYPE_NULL;
 op->size = 0;
 op->delay = 0;
 op->jump = UT64_MAX;
 op->fail = UT64_MAX;
 op->val = UT64_MAX;
 op->ptr = UT64_MAX;
 r_strbuf_init (&op->esil);

 n = cs_disasm (handle, (const ut8*)buf, len, addr, 1, &insn);
 if (n < 1) {
  op->type = R_ANAL_OP_TYPE_ILL;
 } else {
  if (mask & R_ANAL_OP_MASK_OPEX) {
   opex (&op->opex, handle, insn);
  }
  op->size = insn->size;
  op->id = insn->id;
  switch (insn->id) {
  case 181:
   op->type = R_ANAL_OP_TYPE_ILL;
   break;
  case 169:
   op->type = R_ANAL_OP_TYPE_MOV;
   break;
  case 160:
  case 162:
  case 161:
   op->type = R_ANAL_OP_TYPE_RET;
   op->delay = 1;
   break;
  case 133:
   op->type = R_ANAL_OP_TYPE_UNK;
   break;
  case 222:
   switch (INSOP(0).type) {
   case 129:

    break;
   case 128:
    op->type = R_ANAL_OP_TYPE_UCALL;
    op->delay = 1;
    break;
   default:
    op->type = R_ANAL_OP_TYPE_CALL;
    op->delay = 1;
    op->jump = INSOP(0).imm;
    break;
   }
   break;
  case 167:
   op->type = R_ANAL_OP_TYPE_NOP;
   break;
  case 221:
   op->type = R_ANAL_OP_TYPE_CMP;
   break;
  case 180:
  case 179:
   op->type = R_ANAL_OP_TYPE_JMP;
   op->delay = 1;
   op->jump = INSOP(0).imm;
   break;
  case 177:
  case 178:
  case 176:
  case 175:
  case 174:
  case 173:
  case 172:
  case 171:
  case 170:
   op->type = R_ANAL_OP_TYPE_LOAD;
   break;
  case 152:
  case 153:
  case 151:
  case 154:
  case 150:
  case 149:
  case 148:
   op->type = R_ANAL_OP_TYPE_STORE;
   break;
  case 165:
  case 163:
  case 164:
  case 166:
   op->type = R_ANAL_OP_TYPE_OR;
   break;
  case 230:
  case 229:
  case 228:
  case 227:
  case 226:
  case 225:
  case 224:
  case 223:
  case 217:
   switch (INSOP(0).type) {
   case 128:
    op->type = R_ANAL_OP_TYPE_CJMP;
    op->delay = 1;
    if (INSCC != SPARC_CC_ICC_N) {
     op->jump = INSOP (1).imm;
    }
    if (INSCC != SPARC_CC_ICC_A) {
     op->fail = addr + 8;
    }
    break;
   case 130:
    op->type = R_ANAL_OP_TYPE_CJMP;
    op->delay = 1;
    if (INSCC != SPARC_CC_ICC_N) {
     op->jump = INSOP (0).imm;
    }
    if (INSCC != SPARC_CC_ICC_A) {
     op->fail = addr + 8;
    }
    break;
   default:

    break;
   }
   break;
  case 210:
  case 209:
  case 189:
  case 188:
  case 187:
  case 186:
  case 184:
  case 183:
  case 182:
  case 146:
  case 145:
  case 144:
  case 147:
  case 140:
  case 141:
   op->type = R_ANAL_OP_TYPE_SUB;
   break;
  case 235:
  case 234:
  case 232:
  case 233:
  case 231:
  case 236:
  case 220:
  case 219:
  case 218:
  case 212:
  case 211:
  case 198:
  case 197:
  case 196:
  case 195:
  case 194:
  case 193:
  case 192:
  case 191:
  case 190:
  case 142:
  case 143:
   op->type = R_ANAL_OP_TYPE_ADD;
   break;
  case 213:
  case 208:
  case 207:
  case 206:
  case 205:
  case 204:
  case 203:
  case 202:
  case 201:
  case 200:
  case 199:
  case 185:
  case 168:
  case 155:
  case 156:
  case 135:
  case 134:
  case 136:
  case 132:
  case 131:
   op->type = R_ANAL_OP_TYPE_MUL;
   break;
  case 216:
  case 215:
  case 214:
  case 158:
  case 157:
  case 159:
  case 138:
  case 137:
  case 139:
   op->type = R_ANAL_OP_TYPE_DIV;
   break;
  }
  if (mask & R_ANAL_OP_MASK_VAL) {
   op_fillval (op, handle, insn);
  }
  cs_free (insn, n);
 }
 return op->size;
}
