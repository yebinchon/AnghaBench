
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int instr; } ;
typedef TYPE_1__ ebc_command_t ;


 size_t EBC_DIV ;
 int EBC_INSTR_MAXLEN ;
 scalar_t__ TEST_BIT (int const,int) ;
 int decode_add (int const*,TYPE_1__*) ;
 char** instr_names ;
 int snprintf (int ,int ,char*,char*,unsigned int) ;

__attribute__((used)) static int decode_div(const ut8 *bytes, ebc_command_t *cmd) {
 int ret = decode_add(bytes, cmd);
 unsigned bits = TEST_BIT (bytes[0], 6)? 64: 32;
 snprintf(cmd->instr, EBC_INSTR_MAXLEN, "%s%u",
   instr_names[EBC_DIV], bits);
 return ret;
}
