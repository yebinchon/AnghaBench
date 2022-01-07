
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct cr16_cmd {int operands; int instr; } ;
struct TYPE_3__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int cr16_decode_command (int const*,struct cr16_cmd*) ;
 int r_strbuf_set (int *,int ) ;
 int sdb_fmt (char*,int ,int ) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 struct cr16_cmd cmd;
 int ret = cr16_decode_command (buf, &cmd);
 r_strbuf_set (&op->buf_asm, sdb_fmt ("%s %s", cmd.instr, cmd.operands));
 return op->size = ret;
}
