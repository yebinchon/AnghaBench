
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef int csh ;
struct TYPE_10__ {int size; scalar_t__* op_str; int mnemonic; } ;
typedef TYPE_1__ cs_insn ;
struct TYPE_12__ {int pc; scalar_t__ big_endian; } ;
struct TYPE_11__ {int size; } ;
typedef TYPE_2__ RAsmOp ;
typedef TYPE_3__ RAsm ;


 int CS_ARCH_XCORE ;
 int CS_MODE_BIG_ENDIAN ;
 int CS_MODE_LITTLE_ENDIAN ;
 int CS_OPT_DETAIL ;
 int CS_OPT_OFF ;
 int cs_close (int *) ;
 int cs_disasm (int ,int *,int,int ,int,TYPE_1__**) ;
 int cs_free (TYPE_1__*,int) ;
 int cs_open (int ,int,int *) ;
 int cs_option (int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int r_asm_op_set_asm (TYPE_2__*,char*) ;
 char* sdb_fmt (char*,int ,char*,scalar_t__*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 csh handle;
 cs_insn* insn;
 int mode, n, ret = -1;
 mode = a->big_endian? CS_MODE_BIG_ENDIAN: CS_MODE_LITTLE_ENDIAN;
 memset (op, 0, sizeof (RAsmOp));
 op->size = 4;
 ret = cs_open (CS_ARCH_XCORE, mode, &handle);
 if (ret) {
  goto fin;
 }
 cs_option (handle, CS_OPT_DETAIL, CS_OPT_OFF);
 n = cs_disasm (handle, (ut8*)buf, len, a->pc, 1, &insn);
 if (n < 1) {
  r_asm_op_set_asm (op, "invalid");
  op->size = 4;
  ret = -1;
  goto beach;
 }
 ret = 4;
 if (insn->size < 1) {
  goto beach;
 }
 op->size = insn->size;
 r_asm_op_set_asm (op, sdb_fmt ("%s%s%s",
  insn->mnemonic, insn->op_str[0]? " ": "",
  insn->op_str));

 beach:
 cs_free (insn, n);
 cs_close (&handle);
 fin:
 return ret;
}
