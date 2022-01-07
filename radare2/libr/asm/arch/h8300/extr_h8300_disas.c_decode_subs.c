
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {int operands; } ;


 int H8300_INSTR_MAXLEN ;
 scalar_t__ decode_opcode (int const*,struct h8300_cmd*) ;
 int snprintf (int ,int ,char*,int,int const) ;

__attribute__((used)) static int decode_subs(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 2;

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }

 snprintf(cmd->operands, H8300_INSTR_MAXLEN, "#%u,r%u",
   bytes[1] & 0x80 ? 2 : 1, bytes[1] & 0x7);

 return ret;
}
