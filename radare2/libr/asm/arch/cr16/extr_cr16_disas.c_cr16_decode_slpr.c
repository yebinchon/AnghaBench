
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct cr16_cmd {int type; int operands; scalar_t__* instr; } ;


 int CR16_INSTR_MAXLEN ;


 int CR16_TYPE_SLPR ;
 size_t cr16_get_dstreg (int) ;
 size_t cr16_get_srcreg (int) ;
 char** cr16_regs_names ;
 char** dedicated_regs ;
 char** instrs_4bit ;
 int r_read_le16 (int const*) ;
 int r_str_ncpy (scalar_t__*,char const*,int) ;
 int snprintf (int ,int ,char*,char*,char*) ;

__attribute__((used)) static int cr16_decode_slpr(const ut8 *instr, struct cr16_cmd *cmd) {
 int ret = 2;

 ut16 c = r_read_le16 (instr);

 const char *ins = instrs_4bit[c >> 9];
 if (ins) {
  r_str_ncpy (cmd->instr, ins, sizeof (cmd->instr) - 1);
 } else {
  *cmd->instr = 0;
 }

 switch (c >> 9) {
 case 129:
  snprintf (cmd->operands, CR16_INSTR_MAXLEN - 1,
    "%s,%s",cr16_regs_names[cr16_get_srcreg(c)],
    dedicated_regs[cr16_get_dstreg(c)]);
  break;
 case 128:
  snprintf (cmd->operands, CR16_INSTR_MAXLEN - 1,
    "%s,%s", dedicated_regs[cr16_get_dstreg(c)],
    cr16_regs_names[cr16_get_srcreg(c)]);
  break;
 }

 cmd->type = CR16_TYPE_SLPR;

 return ret;
}
