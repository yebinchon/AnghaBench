
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {int operands; } ;


 int H8300_INSTR_MAXLEN ;
 scalar_t__ decode_opcode (int const*,struct h8300_cmd*) ;
 int snprintf (int ,int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static int decode_adds(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 2;
 unsigned reg, val;

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }

 reg = bytes[1] & 0x7;

 if (bytes[1] & 0x80) {
  val = 2;
 } else {
  val = 1;
 }

 snprintf(cmd->operands, H8300_INSTR_MAXLEN, "#%u,r%u", val, reg);

 return ret;
}
