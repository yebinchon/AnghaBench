
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {char* operands; } ;


 scalar_t__ decode_opcode (int const*,struct h8300_cmd*) ;

__attribute__((used)) static int decode_nop(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 2;

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }

 cmd->operands[0] = '\0';

 return ret;
}
