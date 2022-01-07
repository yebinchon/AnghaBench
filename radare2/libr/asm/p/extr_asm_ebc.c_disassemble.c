
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_8__ {int member_0; } ;
struct TYPE_10__ {char* instr; scalar_t__* operands; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_3__ ebc_command_t ;
struct TYPE_11__ {int size; } ;
typedef TYPE_4__ RAsmOp ;
typedef int RAsm ;


 int ebc_decode_command (int const*,TYPE_3__*) ;
 int r_asm_op_set_asm (TYPE_4__*,char const*) ;
 char* sdb_fmt (char*,char*,scalar_t__*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 ebc_command_t cmd = { {0}, {0} };
 int ret = ebc_decode_command (buf, &cmd);
 const char *buf_asm = (cmd.operands[0])
  ? sdb_fmt ("%s %s", cmd.instr, cmd.operands): cmd.instr;
 r_asm_op_set_asm (op, buf_asm);
 return op->size = ret;
}
