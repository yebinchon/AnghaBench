
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {int operands; } ;


 int H8300_INSTR_MAXLEN ;
 int const H8300_LDC ;
 int const H8300_LDC_2 ;
 int const H8300_ORC ;
 int const H8300_STC ;
 int const H8300_XORC ;
 scalar_t__ decode_opcode (int const*,struct h8300_cmd*) ;
 int snprintf (int ,int ,char*,int const,...) ;

__attribute__((used)) static int decode_ldc(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 2;

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }

 if (bytes[0] == H8300_LDC_2 || bytes[0] == H8300_XORC ||
   bytes[0] == H8300_ORC) {
  snprintf(cmd->operands, H8300_INSTR_MAXLEN,
    "#0x%x:8,ccr", bytes[1]);
 } else if (bytes[0] == H8300_LDC) {
  snprintf(cmd->operands, H8300_INSTR_MAXLEN,
    "r%u%c,ccr", bytes[1] & 0x7,
    bytes[1] & 0x8 ? 'l' : 'h');
 } else if (bytes[0] == H8300_STC) {
  snprintf(cmd->operands, H8300_INSTR_MAXLEN,
    "ccr,r%u%c", bytes[1] & 0x7,
    bytes[1] & 0x8 ? 'l' : 'h');
 }

 return ret;
}
