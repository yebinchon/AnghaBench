
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef scalar_t__ csh ;
struct TYPE_10__ {int size; int id; } ;
typedef TYPE_1__ cs_insn ;
struct TYPE_13__ {int imm; } ;
struct TYPE_12__ {int cpu; } ;
struct TYPE_11__ {int size; int id; void* type; int jump; int opex; int esil; scalar_t__ delay; } ;
typedef int RAnalOpMask ;
typedef TYPE_2__ RAnalOp ;
typedef TYPE_3__ RAnal ;


 int CS_ARCH_XCORE ;
 int CS_ERR_OK ;
 int CS_MODE_BIG_ENDIAN ;
 int CS_MODE_V9 ;
 int CS_OPT_DETAIL ;
 int CS_OPT_ON ;
 TYPE_9__ INSOP (int ) ;
 int R_ANAL_OP_MASK_OPEX ;
 void* R_ANAL_OP_TYPE_ADD ;
 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_ILL ;
 void* R_ANAL_OP_TYPE_NULL ;
 void* R_ANAL_OP_TYPE_RET ;
 void* R_ANAL_OP_TYPE_SUB ;
 int cs_close (scalar_t__*) ;
 int cs_disasm (scalar_t__,int const*,int,int ,int,TYPE_1__**) ;
 int cs_free (TYPE_1__*,int) ;
 int cs_open (int ,int,scalar_t__*) ;
 int cs_option (scalar_t__,int ,int ) ;
 int opex (int *,scalar_t__,TYPE_1__*) ;
 int r_strbuf_init (int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int analop(RAnal *a, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 static csh handle = 0;
 static int omode = 0;
 cs_insn *insn;
 int mode, n, ret;
 mode = CS_MODE_BIG_ENDIAN;
 if (!strcmp (a->cpu, "v9")) {
  mode |= CS_MODE_V9;
 }
 if (mode != omode) {
  if (handle) {
   cs_close (&handle);
   handle = 0;
  }
  omode = mode;
 }
 if (handle == 0) {
  ret = cs_open (CS_ARCH_XCORE, mode, &handle);
  if (ret != CS_ERR_OK) {
   return -1;
  }
  cs_option (handle, CS_OPT_DETAIL, CS_OPT_ON);
 }
 op->type = R_ANAL_OP_TYPE_NULL;
 op->size = 0;
 op->delay = 0;
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
  case 136:
  case 132:
  case 129:
   op->type = R_ANAL_OP_TYPE_RET;
   break;
  case 137:
  case 133:
  case 135:
  case 134:
   op->type = R_ANAL_OP_TYPE_CALL;
   op->jump = INSOP(0).imm;
   break;

  case 143:
  case 142:
  case 141:
  case 139:
  case 144:
  case 138:
  case 140:
   op->type = R_ANAL_OP_TYPE_CALL;
   op->jump = INSOP(0).imm;
   break;
  case 128:
  case 130:
   op->type = R_ANAL_OP_TYPE_SUB;
   break;
  case 145:
  case 131:
   op->type = R_ANAL_OP_TYPE_ADD;
   break;
  }
  cs_free (insn, n);
 }

 return op->size;
}
