
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_28__ {int size; TYPE_2__* detail; int id; scalar_t__* op_str; int mnemonic; } ;
typedef TYPE_3__ cs_insn ;
struct TYPE_30__ {int bits; } ;
struct TYPE_29__ {int cycles; int size; int family; int opex; scalar_t__ prefix; int cond; int id; scalar_t__ nopcode; int mnemonic; int type; int esil; scalar_t__ delay; int * dst; int ** src; void* val; void* ptr; void* fail; void* jump; } ;
struct TYPE_26__ {int* prefix; int* opcode; } ;
struct TYPE_27__ {TYPE_1__ x86; } ;
typedef int RAnalOpMask ;
typedef TYPE_4__ RAnalOp ;
typedef TYPE_5__ RAnal ;


 int CS_ARCH_X86 ;
 int CS_ERR_OK ;
 int CS_MODE_16 ;
 int CS_MODE_32 ;
 int CS_MODE_64 ;
 int CS_OPT_DETAIL ;
 int CS_OPT_ON ;
 int R_ANAL_OP_FAMILY_CPU ;
 int R_ANAL_OP_FAMILY_PRIV ;
 int R_ANAL_OP_FAMILY_THREAD ;
 int R_ANAL_OP_MASK_DISASM ;
 int R_ANAL_OP_MASK_ESIL ;
 int R_ANAL_OP_MASK_OPEX ;
 int R_ANAL_OP_MASK_VAL ;
 scalar_t__ R_ANAL_OP_PREFIX_LOCK ;
 scalar_t__ R_ANAL_OP_PREFIX_REP ;
 scalar_t__ R_ANAL_OP_PREFIX_REPNE ;
 int R_ANAL_OP_TYPE_ILL ;
 int R_ANAL_OP_TYPE_NULL ;
 void* UT64_MAX ;
 int X86_GRP_PRIVILEGE ;



 int anop (TYPE_5__*,TYPE_4__*,int ,int const*,int,scalar_t__*,TYPE_3__*) ;
 int anop_esil (TYPE_5__*,TYPE_4__*,int ,int const*,int,scalar_t__*,TYPE_3__*) ;
 int cond_x862r2 (int ) ;
 int cs_close (scalar_t__*) ;
 int cs_disasm (scalar_t__,int const*,int,int ,int,TYPE_3__**) ;
 int cs_disasm_iter (scalar_t__,int const**,size_t*,int *,TYPE_3__*) ;
 int cs_free (TYPE_3__*,int) ;
 scalar_t__ cs_insn_group (scalar_t__,TYPE_3__*,int ) ;
 scalar_t__ cs_len_prefix_opcode (int*) ;
 TYPE_3__* cs_malloc (scalar_t__) ;
 int cs_open (int ,int,scalar_t__*) ;
 int cs_option (scalar_t__,int ,int ) ;
 scalar_t__ handle ;
 int memset (TYPE_4__*,char,int) ;
 int op_fillval (TYPE_5__*,TYPE_4__*,scalar_t__*,TYPE_3__*) ;
 int opex (int *,scalar_t__,TYPE_3__*) ;
 int r_str_newf (char*,int ,char*,scalar_t__*) ;
 int r_strbuf_init (int *) ;
 int set_opdir (TYPE_4__*,TYPE_3__*) ;
 int strdup (char*) ;

__attribute__((used)) static int analop(RAnal *a, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 static int omode = 0;



 cs_insn *insn = ((void*)0);
 int mode = (a->bits==64)? CS_MODE_64:
  (a->bits==32)? CS_MODE_32:
  (a->bits==16)? CS_MODE_16: 0;
 int n, ret;

 if (handle && mode != omode) {
  if (handle != 0) {
   cs_close (&handle);
   handle = 0;
  }
 }
 omode = mode;
 if (handle == 0) {
  ret = cs_open (CS_ARCH_X86, mode, &handle);
  if (ret != CS_ERR_OK) {
   handle = 0;
   return 0;
  }
 }
 memset (op, '\0', sizeof (RAnalOp));
 op->cycles = 1;
 op->type = R_ANAL_OP_TYPE_NULL;
 op->jump = UT64_MAX;
 op->fail = UT64_MAX;
 op->ptr = op->val = UT64_MAX;
 op->src[0] = ((void*)0);
 op->src[1] = ((void*)0);
 op->dst = ((void*)0);
 op->size = 0;
 op->delay = 0;
 r_strbuf_init (&op->esil);
 cs_option (handle, CS_OPT_DETAIL, CS_OPT_ON);
 n = cs_disasm (handle, (const ut8*)buf, len, addr, 1, &insn);

 if (n < 1) {
  op->type = R_ANAL_OP_TYPE_ILL;
  if (mask & R_ANAL_OP_MASK_DISASM) {
   op->mnemonic = strdup ("invalid");
  }
 } else {
  if (mask & R_ANAL_OP_MASK_DISASM) {
   op->mnemonic = r_str_newf ("%s%s%s",
    insn->mnemonic,
    insn->op_str[0]?" ":"",
    insn->op_str);
  }




  op->nopcode = cs_len_prefix_opcode (insn->detail->x86.prefix)
   + cs_len_prefix_opcode (insn->detail->x86.opcode);
  op->size = insn->size;
  op->id = insn->id;
  op->family = R_ANAL_OP_FAMILY_CPU;
  op->prefix = 0;
  op->cond = cond_x862r2 (insn->id);
  switch (insn->detail->x86.prefix[0]) {
  case 128:
   op->prefix |= R_ANAL_OP_PREFIX_REPNE;
   break;
  case 129:
   op->prefix |= R_ANAL_OP_PREFIX_REP;
   break;
  case 130:
   op->prefix |= R_ANAL_OP_PREFIX_LOCK;
   op->family = R_ANAL_OP_FAMILY_THREAD;
   break;
  }
  anop (a, op, addr, buf, len, &handle, insn);
  set_opdir (op, insn);
  if (mask & R_ANAL_OP_MASK_ESIL) {
   anop_esil (a, op, addr, buf, len, &handle, insn);
  }
  if (mask & R_ANAL_OP_MASK_OPEX) {
   opex (&op->opex, handle, insn);
  }
  if (mask & R_ANAL_OP_MASK_VAL) {
   op_fillval (a, op, &handle, insn);
  }
 }

 if (insn) {






  cs_free (insn, n);

 }

 return op->size;
}
