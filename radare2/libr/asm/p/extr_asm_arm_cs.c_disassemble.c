
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef int cs_mode ;
struct TYPE_10__ {int size; scalar_t__* op_str; int mnemonic; } ;
typedef TYPE_1__ cs_insn ;
struct TYPE_12__ {int immdisp; int bits; scalar_t__ syntax; scalar_t__* features; int pc; scalar_t__* cpu; scalar_t__ big_endian; } ;
struct TYPE_11__ {int size; int buf_asm; } ;
typedef TYPE_2__ RAsmOp ;
typedef TYPE_3__ RAsm ;


 int CS_ARCH_ARM ;
 int CS_ARCH_ARM64 ;
 int CS_MODE_ARM ;
 int CS_MODE_BIG_ENDIAN ;
 int CS_MODE_LITTLE_ENDIAN ;
 int CS_MODE_MCLASS ;
 int CS_MODE_THUMB ;
 int CS_MODE_V8 ;
 int CS_OPT_DETAIL ;
 int CS_OPT_OFF ;
 int CS_OPT_ON ;
 int CS_OPT_SYNTAX ;
 int CS_OPT_SYNTAX_DEFAULT ;
 int CS_OPT_SYNTAX_NOREGNAME ;
 scalar_t__ R_ASM_SYNTAX_REGNUM ;
 int R_MIN (int,int) ;
 scalar_t__ cd ;
 int check_features (TYPE_3__*,TYPE_1__*) ;
 int cs_close (scalar_t__*) ;
 int cs_disasm (scalar_t__,int const*,int ,int ,int,TYPE_1__**) ;
 int cs_free (TYPE_1__*,int) ;
 int cs_open (int ,int,scalar_t__*) ;
 int cs_option (scalar_t__,int ,int ) ;
 int r_str_rmch (char*,char) ;
 int * r_strbuf_get (int *) ;
 int r_strbuf_set (int *,char*) ;
 char* sdb_fmt (char*,int ,char*,scalar_t__*) ;
 scalar_t__ strstr (scalar_t__*,char*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 static int omode = -1;
 static int obits = 32;
 bool disp_hash = a->immdisp;
 cs_insn* insn = ((void*)0);
 cs_mode mode = 0;
 int ret, n = 0;
 mode |= (a->bits == 16)? CS_MODE_THUMB: CS_MODE_ARM;
 mode |= (a->big_endian)? CS_MODE_BIG_ENDIAN: CS_MODE_LITTLE_ENDIAN;
 if (mode != omode || a->bits != obits) {
  cs_close (&cd);
  cd = 0;
  omode = mode;
  obits = a->bits;
 }

 if (a->cpu) {
  if (strstr (a->cpu, "cortex")) {
   mode |= CS_MODE_MCLASS;
  }
  if (a->bits != 64) {
   if (strstr (a->cpu, "v8")) {
    mode |= CS_MODE_V8;
   }
  }
 }
 if (a->features && a->bits != 64) {
  if (strstr (a->features, "v8")) {
   mode |= CS_MODE_V8;
  }
 }
 if (op) {
  op->size = 4;
  r_strbuf_set (&op->buf_asm, "");
 }
 if (!cd || mode != omode) {
  ret = (a->bits == 64)?
   cs_open (CS_ARCH_ARM64, mode, &cd):
   cs_open (CS_ARCH_ARM, mode, &cd);
  if (ret) {
   ret = -1;
   goto beach;
  }
 }
 cs_option (cd, CS_OPT_SYNTAX, (a->syntax == R_ASM_SYNTAX_REGNUM)
   ? CS_OPT_SYNTAX_NOREGNAME
   : CS_OPT_SYNTAX_DEFAULT);
 cs_option (cd, CS_OPT_DETAIL, (a->features && *a->features)
  ? CS_OPT_ON: CS_OPT_OFF);
 if (!buf) {
  goto beach;
 }
 n = cs_disasm (cd, buf, R_MIN (4, len), a->pc, 1, &insn);
 if (n < 1 || insn->size < 1) {
  ret = -1;
  goto beach;
 }
 if (op) {
  op->size = 0;
 }
 if (a->features && *a->features) {
  if (!check_features (a, insn) && op) {
   op->size = insn->size;
   r_strbuf_set (&op->buf_asm, "illegal");
  }
 }
 if (op && !op->size) {
  op->size = insn->size;
  char *buf_asm = sdb_fmt ("%s%s%s",
   insn->mnemonic,
   insn->op_str[0]?" ":"",
   insn->op_str);
  if (!disp_hash) {
   r_str_rmch (buf_asm, '#');
  }
  r_strbuf_set (&op->buf_asm, buf_asm);
 }
 cs_free (insn, n);
 beach:
 cs_close (&cd);
 if (op) {
  if (!*r_strbuf_get (&op->buf_asm)) {
   r_strbuf_set (&op->buf_asm, "invalid");
  }
  return op->size;
 }
 return ret;
}
