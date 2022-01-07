
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct msp430_cmd {int instr; scalar_t__* operands; } ;
struct TYPE_6__ {scalar_t__ syntax; } ;
struct TYPE_5__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 scalar_t__ R_ASM_SYNTAX_ATT ;
 int msp430_decode_command (int const*,int,struct msp430_cmd*) ;
 int r_str_replace_ch (char*,char,int ,int) ;
 scalar_t__ r_strbuf_get (int *) ;
 int r_strbuf_set (int *,int ) ;
 int sdb_fmt (char*,int ,...) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 struct msp430_cmd cmd;
 int ret = msp430_decode_command (buf, len, &cmd);
 if (ret > 0) {
  if (cmd.operands[0]) {
   r_strbuf_set (&op->buf_asm, sdb_fmt ("%s %s", cmd.instr, cmd.operands));
  } else {
   r_strbuf_set (&op->buf_asm, sdb_fmt ("%s", cmd.instr));
  }
 }
 if (a->syntax != R_ASM_SYNTAX_ATT) {
  char *ba = (char *)r_strbuf_get (&op->buf_asm);
  r_str_replace_ch (ba, '#', 0, 1);

  r_str_replace_ch (ba, '&', 0, 1);
  r_str_replace_ch (ba, '%', 0, 1);
 }

 return op->size = ret;
}
