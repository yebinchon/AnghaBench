
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct v810_cmd {int operands; int instr; } ;
typedef int st16 ;


 size_t OPCODE (int const) ;
 int REG1 (int const) ;
 int REG2 (int const) ;
 size_t V810_ADDI ;
 scalar_t__ V810_INSTR_MAXLEN ;
 char** instrs ;
 int snprintf (int ,scalar_t__,char*,...) ;

__attribute__((used)) static int decode_3operands(const ut16 word1, const ut16 word2, struct v810_cmd *cmd) {
 snprintf (cmd->instr, V810_INSTR_MAXLEN - 1, "%s",
   instrs[OPCODE(word1)]);

 if (OPCODE(word1) == V810_ADDI) {
  snprintf (cmd->operands, V810_INSTR_MAXLEN - 1, "%d, r%d, r%d",
    (st16) word2, REG1(word1), REG2(word1));
 } else {
  snprintf (cmd->operands, V810_INSTR_MAXLEN - 1, "0x%x, r%d, r%d",
    word2, REG1(word1), REG2(word1));
 }

 return 4;
}
