
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ut8 ;
struct TYPE_3__ {int operands; int instr; } ;
typedef TYPE_1__ ebc_command_t ;


 int EBC_INSTR_MAXLEN ;
 size_t const EBC_OPCODE_MASK ;
 int EBC_OPERANDS_MAXLEN ;
 char** dedic_regs ;
 char** instr_names ;
 int snprintf (int ,int ,char*,char*,...) ;

__attribute__((used)) static int decode_loadsp(const ut8 *bytes, ebc_command_t *cmd) {
 int ret = 2;
 snprintf(cmd->instr, EBC_INSTR_MAXLEN, "%s",
   instr_names[bytes[0] & EBC_OPCODE_MASK]);
 snprintf(cmd->operands, EBC_OPERANDS_MAXLEN, "%s, r%u",
   dedic_regs[bytes[1] & 0x7],
   (bytes[1] >> 4) & 0x7);
 return ret;
}
