
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int instr; } ;
typedef TYPE_1__ ebc_command_t ;


 size_t EBC_CMPLTE ;
 int EBC_INSTR_MAXLEN ;
 scalar_t__ TEST_BIT (int const,int) ;
 int decode_cmp (int const*,TYPE_1__*) ;
 char** instr_names ;
 int snprintf (int ,int ,char*,char*,unsigned int) ;

__attribute__((used)) static int decode_cmplte(const ut8 *bytes, ebc_command_t *cmd) {
 unsigned bits = TEST_BIT (bytes[0], 6)? 64: 32;
 snprintf (cmd->instr, EBC_INSTR_MAXLEN, "%s%dlte",
   instr_names[EBC_CMPLTE], bits);
 return decode_cmp(bytes, cmd);
}
