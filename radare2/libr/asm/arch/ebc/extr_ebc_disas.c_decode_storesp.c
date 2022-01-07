
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int operands; int instr; } ;
typedef TYPE_1__ ebc_command_t ;


 int CHK_SNPRINTF (int ,int ,char*,int const,char*) ;
 int EBC_INSTR_MAXLEN ;
 int const EBC_OPCODE_MASK ;
 int EBC_OPERANDS_MAXLEN ;
 char** dedic_regs ;
 char** instr_names ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int decode_storesp(const ut8 *bytes, ebc_command_t *cmd) {
 int ret = 2;
 unsigned op2 = (bytes[1] >> 4) & 0x07;
 snprintf (cmd->instr, EBC_INSTR_MAXLEN, "%s",
  instr_names[bytes[0] & EBC_OPCODE_MASK]);
 CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN, "r%u, %s",
  bytes[1] & 0x7,
  op2 < 2 ? dedic_regs[op2] : "RESERVED_DEDICATED_REG");
 return ret;
}
