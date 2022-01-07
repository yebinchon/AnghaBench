
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct v810_cmd {int operands; int instr; } ;


 int OPCODE (int const) ;
 int REG1 (int const) ;
 int REG2 (int const) ;
 scalar_t__ V810_INSTR_MAXLEN ;
 char** ext_instrs ;
 int snprintf (int ,scalar_t__,char*,...) ;

__attribute__((used)) static int decode_extended(const ut16 word1, const ut16 word2, struct v810_cmd *cmd) {
 ut8 subop = OPCODE(word2);
 if (subop > 0xC) {
  return -1;
 }

 snprintf (cmd->instr, V810_INSTR_MAXLEN - 1, "%s",
   ext_instrs[subop]);

 switch (subop) {
 case 138:
 case 136:
 case 137:
 case 139:
 case 131:
 case 133:
 case 135:
 case 132:
 case 130:
 case 134:
  snprintf (cmd->operands, V810_INSTR_MAXLEN - 1, "r%d, r%d",
    REG1(word1), REG2(word1));
  break;
 case 129:
 case 128:
  snprintf (cmd->operands, V810_INSTR_MAXLEN - 1, "r%d",
    REG2(word1));
  break;
 default:
  return -1;
 }

 return 4;
}
