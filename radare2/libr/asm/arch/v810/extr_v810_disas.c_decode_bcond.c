
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int ut16 ;
struct v810_cmd {int operands; int instr; } ;
typedef int st16 ;


 int DISP9 (int const) ;
 size_t V810_COND_NOP ;
 scalar_t__ V810_INSTR_MAXLEN ;
 char** conds ;
 int snprintf (int ,scalar_t__,char*,...) ;

__attribute__((used)) static int decode_bcond(const ut16 instr, struct v810_cmd *cmd) {
 st16 disp;
 ut8 cond;

 cond = (instr >> 9) & 0xF;
 disp = DISP9(instr);

 if (cond == V810_COND_NOP) {
  snprintf (cmd->instr, V810_INSTR_MAXLEN - 1, "nop");
 } else {
  snprintf (cmd->instr, V810_INSTR_MAXLEN - 1, "b%s", conds[cond]);
  snprintf (cmd->operands, V810_INSTR_MAXLEN - 1, "%d", disp);
 }

 return 2;
}
