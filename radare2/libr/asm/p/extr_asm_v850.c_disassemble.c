
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
struct v850_cmd {char* instr; char* operands; int addr; } ;
struct TYPE_7__ {int pc; } ;
struct TYPE_6__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int r_asm_op_set_asm (TYPE_1__*,int ) ;
 int sdb_fmt (char*,char*,char*) ;
 int v850_decode_command (int const*,int,struct v850_cmd*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 struct v850_cmd cmd = {
  .addr = a->pc,
  .instr = "",
  .operands = ""
 };
 if (len < 2) {
  return -1;
 }
 int ret = v850_decode_command (buf, len, &cmd);
 if (ret > 0) {
  r_asm_op_set_asm (op, sdb_fmt ("%s %s", cmd.instr, cmd.operands));
 }
 return op->size = ret;
}
