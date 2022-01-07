
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct h8300_cmd {int operands; int instr; } ;
struct TYPE_3__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int h8300_decode_command (int const*,struct h8300_cmd*) ;
 int r_strbuf_set (int *,int ) ;
 int sdb_fmt (char*,int ,int ) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 struct h8300_cmd cmd;
 int ret = h8300_decode_command(buf, &cmd);
 r_strbuf_set (&op->buf_asm, sdb_fmt ("%s %s", cmd.instr, cmd.operands));
 return op->size = ret;
}
