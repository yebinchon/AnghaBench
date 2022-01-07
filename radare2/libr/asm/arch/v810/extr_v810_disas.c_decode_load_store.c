
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct v810_cmd {int operands; int instr; } ;
typedef int st16 ;


 int OPCODE (int const) ;
 int REG1 (int const) ;
 int REG2 (int const) ;



 scalar_t__ V810_INSTR_MAXLEN ;
 char** instrs ;
 int snprintf (int ,scalar_t__,char*,...) ;

__attribute__((used)) static int decode_load_store(const ut16 word1, const ut16 word2, struct v810_cmd *cmd) {
 snprintf (cmd->instr, V810_INSTR_MAXLEN - 1, "%s",
  instrs[OPCODE(word1)]);

 switch (OPCODE(word1)) {
 case 130:
 case 129:
 case 128:
 case 133:
 case 132:
 case 131:
  snprintf (cmd->operands, V810_INSTR_MAXLEN - 1,
    "r%d, %hd[r%d]",
    REG2(word1), (st16)word2, REG1(word1));
  break;
 case 136:
 case 135:
 case 134:
 case 139:
 case 138:
 case 137:
 case 140:
  snprintf (cmd->operands, V810_INSTR_MAXLEN - 1,
    "%hd[r%d], r%d",
    (st16)word2, REG1(word1), REG2(word1));
  break;
 }

 return 4;
}
