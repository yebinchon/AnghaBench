
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {int operands; } ;


 int H8300_INSTR_MAXLEN ;
 scalar_t__ decode_opcode_4bit (int const*,struct h8300_cmd*) ;
 int snprintf (int ,int ,char*,int const,int const,char) ;

__attribute__((used)) static int decode_imm2r_short(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 2;

 if (decode_opcode_4bit(bytes, cmd)) {
  return -1;
 }

 snprintf(cmd->operands, H8300_INSTR_MAXLEN, "#0x%x:8,r%u%c",
   bytes[1], bytes[0] & 0x7, bytes[0] & 0x8 ? 'l' : 'h');

 return ret;
}
