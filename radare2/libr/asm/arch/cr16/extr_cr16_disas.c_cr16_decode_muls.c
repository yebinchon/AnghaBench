
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct cr16_cmd {int operands; int instr; } ;


 int CR16_INSTR_MAXLEN ;



 size_t cr16_get_dstreg (int) ;
 size_t cr16_get_srcreg (int) ;
 char** cr16_regs_names ;
 int r_read_le16 (int const*) ;
 int snprintf (int ,int ,char*,...) ;

int cr16_decode_muls(const ut8 *instr, struct cr16_cmd *cmd)
{
 int ret = 2;
 ut16 c;
 c = r_read_le16 (instr);

 switch (c >> 9) {
 case 130:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "mulsb");
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1, "%s,%s",
   cr16_regs_names[cr16_get_srcreg(c)],
   cr16_regs_names[cr16_get_dstreg(c)]);
  break;
 case 129:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "mulsw");
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1, "%s,(%s,%s)",
   cr16_regs_names[cr16_get_srcreg(c)],
   cr16_regs_names[cr16_get_dstreg(c) + 1],
   cr16_regs_names[cr16_get_dstreg(c)]);
  break;
 case 128:
  if (c & 0x000C) {
   return -1;
  }

  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "muluw");
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1, "%s,(%s,%s)",
   cr16_regs_names[cr16_get_srcreg(c)],
   cr16_regs_names[cr16_get_dstreg(c) + 1],
   cr16_regs_names[cr16_get_dstreg(c)]);
  break;
 }

 return ret;
}
