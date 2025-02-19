
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
 int snprintf (int ,int ,char*,int const,int const) ;

__attribute__((used)) static int decode_abs162r16(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 4;
 ut16 abs;

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }

 abs = r_read_at_be16 (bytes, 2);
 if (bytes[1] & 0x80) {
  snprintf(cmd->operands, H8300_INSTR_MAXLEN,
    "r%u,@0x%x:16", bytes[1] & 0x7, abs);
 } else {
  snprintf(cmd->operands, H8300_INSTR_MAXLEN, "@0x%x:16,r%u",
   abs, bytes[1] & 0x7);
 }

 return ret;
}
