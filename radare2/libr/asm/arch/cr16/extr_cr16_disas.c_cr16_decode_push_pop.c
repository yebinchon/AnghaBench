
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct cr16_cmd {int operands; int instr; } ;


 scalar_t__ CR16_INSTR_MAXLEN ;




 char** cr16_regs_names ;
 int r_read_le16 (int const*) ;
 int snprintf (int ,scalar_t__,char*,...) ;

__attribute__((used)) static int cr16_decode_push_pop(const ut8 *instr, struct cr16_cmd *cmd)
{
 int ret = 2;
 ut16 c;

 c = r_read_le16 (instr);

 if ((c & 1)) {
  return -1;
 }

 switch (c >> 7) {
 case 128:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "push");
  break;
 case 131:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "pop");
  break;
 case 130:
 case 129:
  snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "popret");
  break;
 }

 snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1, "$0x%x,%s",
   ((c >> 5) & 0x3) + 1,
   cr16_regs_names[(c >> 1) & 0xF]);

 return ret;
}
