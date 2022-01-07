
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int ut16 ;
struct msp430_cmd {size_t opcode; int instr; } ;


 int decode_addressing_mode (int ,int ,int ,struct msp430_cmd*) ;
 scalar_t__ get_bw (int ) ;
 size_t get_twoop_opcode (int ) ;
 int snprintf (int ,int,char*,char*) ;
 scalar_t__ strlen (int ) ;
 int strncat (int ,char*,scalar_t__) ;
 char** two_op_instrs ;

__attribute__((used)) static int decode_twoop_opcode(ut16 instr, ut16 op1, ut16 op2, struct msp430_cmd *cmd)
{
 ut8 opcode = get_twoop_opcode(instr);

 snprintf (cmd->instr, sizeof (cmd->instr), "%s", two_op_instrs[opcode]);
 if (get_bw (instr)) {
  strncat (cmd->instr, ".b", sizeof (cmd->instr) - 1 - strlen(cmd->instr));
 }

 cmd->opcode = opcode;
 return decode_addressing_mode (instr, op1, op2, cmd);
}
