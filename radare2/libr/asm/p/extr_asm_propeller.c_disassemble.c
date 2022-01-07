
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct propeller_cmd {int instr; scalar_t__* operands; scalar_t__* prefix; } ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int propeller_decode_command (int const*,struct propeller_cmd*) ;
 int r_asm_op_set_asm (TYPE_1__*,char const*) ;
 char* sdb_fmt (char*,int ,...) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 const char *buf_asm;
 struct propeller_cmd cmd;
 int ret = propeller_decode_command (buf, &cmd);
 if (cmd.prefix[0] && cmd.operands[0]) {
  buf_asm = sdb_fmt ("%s %s %s", cmd.prefix, cmd.instr, cmd.operands);
 } else if (cmd.operands[0]) {
  buf_asm = sdb_fmt ("%s %s", cmd.instr, cmd.operands);
 } else {
  buf_asm = sdb_fmt ("%s", cmd.instr);
 }
 r_asm_op_set_asm (op, buf_asm);
 op->size = 4;
 return ret;
}
