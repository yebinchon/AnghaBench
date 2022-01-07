
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {char* operands; int instr; } ;
typedef TYPE_1__ ebc_command_t ;


 int EBC_INSTR_MAXLEN ;
 size_t EBC_RET ;
 char** instr_names ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int decode_ret(const ut8 *bytes, ebc_command_t *cmd) {
 int ret = 2;
 snprintf(cmd->instr, EBC_INSTR_MAXLEN, "%s", instr_names[EBC_RET]);
 cmd->operands[0] = '\0';
 return ret;
}
