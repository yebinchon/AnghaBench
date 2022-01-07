
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct cr16_cmd {int type; int operands; int instr; } ;


 scalar_t__ CR16_INSTR_MAXLEN ;
 int CR16_TYPE_BCOND ;
 size_t cr16_get_dstreg (int) ;
 int cr16_get_opcode_i (int) ;
 char** cr16_regs_names ;
 int r_read_le16 (int const*) ;
 int snprintf (int ,scalar_t__,char*,char*,int) ;

__attribute__((used)) static int cr16_decode_bcond01i(const ut8 *instr, struct cr16_cmd *cmd)
{
 ut16 c;
 int ret = 2;

 c = r_read_le16 (instr);

 if (!(c & 1)) {
  return -1;
 }

 if (c >> 14) {
  return -1;
 }

 switch ((c >> 6) & 0x3) {
 case 0x0:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "%s%c",
    "beq0", cr16_get_opcode_i(c) ? 'w' : 'b');
  break;
 case 0x1:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "%s%c",
    "beq1", cr16_get_opcode_i(c) ? 'w' : 'b');
  break;
 case 0x2:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "%s%c",
    "bne0", cr16_get_opcode_i(c) ? 'w' : 'b');
  break;
 case 0x3:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "%s%c",
    "bne1", cr16_get_opcode_i(c) ? 'w' : 'b');
  break;
 }

 snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1, "%s,0x%x",
   cr16_regs_names[cr16_get_dstreg(c)],
   (c >> 1) & 0xF);

 cmd->type = CR16_TYPE_BCOND;

 return ret;
}
