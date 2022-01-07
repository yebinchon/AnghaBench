
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
struct h8300_cmd {int operands; } ;
typedef int st8 ;


 int H8300_INSTR_MAXLEN ;
 scalar_t__ decode_opcode (scalar_t__ const*,struct h8300_cmd*) ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int decode_bsr(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 2;

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }

 snprintf(cmd->operands, H8300_INSTR_MAXLEN, ".%d",
   (st8)bytes[1]);

 return ret;
}
