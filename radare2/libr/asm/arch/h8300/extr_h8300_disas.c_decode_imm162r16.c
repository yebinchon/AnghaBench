
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct h8300_cmd {int operands; } ;


 int H8300_INSTR_MAXLEN ;
 scalar_t__ decode_opcode (int const*,struct h8300_cmd*) ;
 int r_read_at_be16 (int const*,int) ;
 int snprintf (int ,int ,char*,int,int const) ;

__attribute__((used)) static int decode_imm162r16(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 4;
 ut16 imm;

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }

 imm = r_read_at_be16 (bytes, 2);
 snprintf(cmd->operands, H8300_INSTR_MAXLEN, "#0x%x:16,r%u",
   imm, bytes[1] & 0x7);

 return ret;
}
