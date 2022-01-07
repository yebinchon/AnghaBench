
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ut8 ;
struct TYPE_4__ {int instr; } ;
typedef TYPE_1__ ebc_command_t ;


 int EBC_INSTR_MAXLEN ;
 size_t const EBC_OPCODE_MASK ;
 int decode_movsn_args (size_t const*,TYPE_1__*) ;
 char** instr_names ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int decode_movsn(const ut8 *bytes, ebc_command_t *cmd) {
 snprintf(cmd->instr, EBC_INSTR_MAXLEN, "%s",
   instr_names[bytes[0] & EBC_OPCODE_MASK]);
 return decode_movsn_args(bytes, cmd);
}
