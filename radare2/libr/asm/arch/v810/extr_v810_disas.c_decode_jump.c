
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct v810_cmd {int operands; int instr; } ;


 int DISP26 (int const,int const) ;
 size_t OPCODE (int const) ;
 scalar_t__ V810_INSTR_MAXLEN ;
 char** instrs ;
 int snprintf (int ,scalar_t__,char*,...) ;

__attribute__((used)) static int decode_jump(const ut16 word1, const ut16 word2, struct v810_cmd *cmd) {
 snprintf (cmd->instr, V810_INSTR_MAXLEN - 1, "%s",
   instrs[OPCODE(word1)]);
 snprintf (cmd->operands, V810_INSTR_MAXLEN - 1, "%d",
   DISP26(word1, word2));

 return 4;
}
