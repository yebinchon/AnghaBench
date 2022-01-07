
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_16__ {int size; scalar_t__* op_str; int mnemonic; } ;
typedef TYPE_1__ cs_insn ;
struct TYPE_18__ {int bits; scalar_t__ syntax; scalar_t__* features; int pc; } ;
struct TYPE_17__ {int size; char* buf_asm; } ;
typedef TYPE_2__ RAsmOp ;
typedef TYPE_3__ RAsm ;


 int CS_ARCH_X86 ;
 int CS_MODE_16 ;
 int CS_MODE_32 ;
 int CS_MODE_64 ;
 int CS_OPT_DETAIL ;
 int CS_OPT_OFF ;
 int CS_OPT_ON ;
 int CS_OPT_SYNTAX ;
 int CS_OPT_SYNTAX_ATT ;
 int CS_OPT_SYNTAX_INTEL ;
 int CS_OPT_SYNTAX_MASM ;
 int CS_OPT_UNSIGNED ;
 scalar_t__ R_ASM_SYNTAX_ATT ;
 scalar_t__ R_ASM_SYNTAX_JZ ;
 scalar_t__ R_ASM_SYNTAX_MASM ;
 int cd ;
 int check_features (TYPE_3__*,TYPE_1__*) ;
 int cs_close (int*) ;
 scalar_t__ cs_disasm (int,int const*,int,int ,int,TYPE_1__**) ;
 scalar_t__ cs_disasm_iter (int,int const**,size_t*,int *,TYPE_1__*) ;
 int cs_free (TYPE_1__*,scalar_t__) ;
 TYPE_1__* cs_malloc (int) ;
 int cs_open (int ,int,int*) ;
 int cs_option (int,int ,int ) ;
 int decompile_vm (TYPE_3__*,TYPE_2__*,int const*,int) ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ n ;
 int r_asm_op_set_asm (TYPE_2__*,char*) ;
 char* r_strbuf_get (char**) ;
 char* sdb_fmt (char*,int ,char*,scalar_t__*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 static int omode = 0;
 int mode, ret;
 ut64 off = a->pc;

 mode = (a->bits == 64)? CS_MODE_64:
  (a->bits == 32)? CS_MODE_32:
  (a->bits == 16)? CS_MODE_16: 0;
 if (cd && mode != omode) {
  cs_close (&cd);
  cd = 0;
 }
 if (op) {
  op->size = 0;
 }
 omode = mode;
 if (cd == 0) {
  ret = cs_open (CS_ARCH_X86, mode, &cd);
  if (ret) {
   return 0;
  }
 }
 if (a->features && *a->features) {
  cs_option (cd, CS_OPT_DETAIL, CS_OPT_ON);
 } else {
  cs_option (cd, CS_OPT_DETAIL, CS_OPT_OFF);
 }





 if (a->syntax == R_ASM_SYNTAX_MASM) {



 } else if (a->syntax == R_ASM_SYNTAX_ATT) {
  cs_option (cd, CS_OPT_SYNTAX, CS_OPT_SYNTAX_ATT);
 } else {
  cs_option (cd, CS_OPT_SYNTAX, CS_OPT_SYNTAX_INTEL);
 }
 if (!op) {
  return 1;
 }
 op->size = 1;
 cs_insn *insn = ((void*)0);
 n = cs_disasm (cd, (const ut8*)buf, len, off, 1, &insn);

 if (op) {
  op->size = 0;
 }
 if (a->features && *a->features) {
  if (!check_features (a, insn)) {
   op->size = insn->size;
   r_asm_op_set_asm (op, "illegal");
  }
 }
 if (op->size == 0 && n > 0 && insn->size > 0) {
  char *ptrstr;
  op->size = insn->size;
  char *buf_asm = sdb_fmt ("%s%s%s",
    insn->mnemonic, insn->op_str[0]?" ":"",
    insn->op_str);
  ptrstr = strstr (buf_asm, "ptr ");
  if (ptrstr) {
   memmove (ptrstr, ptrstr + 4, strlen (ptrstr + 4) + 1);
  }
  r_asm_op_set_asm (op, buf_asm);
 } else {
  decompile_vm (a, op, buf, len);
 }
 if (a->syntax == R_ASM_SYNTAX_JZ) {
  char *buf_asm = r_strbuf_get (&op->buf_asm);
  if (!strncmp (buf_asm, "je ", 3)) {
   memcpy (buf_asm, "jz", 2);
  } else if (!strncmp (buf_asm, "jne ", 4)) {
   memcpy (buf_asm, "jnz", 3);
  }
 }
 if (insn) {
  cs_free (insn, n);
 }

 return op->size;
}
