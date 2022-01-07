
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {char* operands; } ;




 scalar_t__ decode_opcode (int const*,struct h8300_cmd*) ;

__attribute__((used)) static int decode_eepmov(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 4;

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }
 cmd->operands[0] = '\0';

 switch (bytes[0]) {
 case 128:
 case 129:
  ret = 2;
  break;
 }

 return ret;
}
