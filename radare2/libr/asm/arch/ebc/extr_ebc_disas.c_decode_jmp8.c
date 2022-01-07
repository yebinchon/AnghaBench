
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
 scalar_t__ TEST_BIT (size_t const,int) ;
 char** instr_names ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int decode_jmp8(const ut8 *bytes, ebc_command_t *cmd) {
 char suff[3] = {0};
 if (TEST_BIT (bytes[0], 7)) {
  const char *str = (TEST_BIT(bytes[0], 6))? "cs": "cc";
  snprintf (suff, 3, "%s", str);
 }
 snprintf(cmd->instr, EBC_INSTR_MAXLEN, "%s%s",
   instr_names[bytes[0] & EBC_OPCODE_MASK], suff);
 snprintf(cmd->operands, EBC_OPERANDS_MAXLEN, "0x%x", bytes[1]);
 return 2;
}
