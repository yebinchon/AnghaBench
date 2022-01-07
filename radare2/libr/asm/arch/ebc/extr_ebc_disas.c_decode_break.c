
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int operands; int instr; } ;
typedef TYPE_1__ ebc_command_t ;


 size_t EBC_BREAK ;
 int EBC_INSTR_MAXLEN ;
 int EBC_OPERANDS_MAXLEN ;
 char** instr_names ;
 int snprintf (int ,int ,char*,...) ;

__attribute__((used)) static int decode_break(const ut8 *bytes, ebc_command_t *cmd) {
 snprintf(cmd->instr, EBC_INSTR_MAXLEN, "%s", instr_names[EBC_BREAK]);
 snprintf(cmd->operands, EBC_OPERANDS_MAXLEN, "%d", bytes[1]);
 return 2;
}
