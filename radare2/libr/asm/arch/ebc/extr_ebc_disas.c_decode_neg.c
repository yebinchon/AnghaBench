
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {char* instr; } ;
typedef TYPE_1__ ebc_command_t ;


 int decode_not (int const*,TYPE_1__*) ;

__attribute__((used)) static int decode_neg(const ut8 *bytes, ebc_command_t *cmd) {
 int ret = decode_not(bytes, cmd);
 cmd->instr[1] = 'e';
 cmd->instr[2] = 'g';
 return ret;
}
