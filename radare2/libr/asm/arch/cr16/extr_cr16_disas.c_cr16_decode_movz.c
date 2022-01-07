
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct cr16_cmd {int operands; int instr; } ;


 scalar_t__ CR16_INSTR_MAXLEN ;


 size_t cr16_get_dstreg (int) ;
 size_t cr16_get_srcreg (int) ;
 char** cr16_regs_names ;
 int r_read_le16 (int const*) ;
 int snprintf (int ,scalar_t__,char*,...) ;

int cr16_decode_movz(const ut8 *instr, struct cr16_cmd *cmd)
{
 int ret = 2;
 ut16 c;
 c = r_read_le16 (instr);

 if (c & 1) {
  return -1;
 }

 switch (c >> 9) {
 case 129:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "movxb");
  break;
 case 128:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "movzb");
  break;
 default:
  return -1;
 }

 snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1, "%s,%s",
   cr16_regs_names[cr16_get_srcreg(c)],
   cr16_regs_names[cr16_get_dstreg(c)]);

 return ret;
}
