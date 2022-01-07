
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
 scalar_t__ TEST_BIT (size_t const,int) ;
 int decode_add (size_t const*,TYPE_1__*) ;
 char** instr_names ;
 int snprintf (int ,int ,char*,char*,unsigned int) ;

__attribute__((used)) static int decode_arith(const ut8 *bytes, ebc_command_t *cmd) {
 int ret = decode_add(bytes, cmd);
 unsigned bits = TEST_BIT (bytes[0], 6)? 64: 32;
 snprintf (cmd->instr, EBC_INSTR_MAXLEN, "%s%u",
   instr_names[bytes[0] & EBC_OPCODE_MASK], bits);
 return ret;
}
