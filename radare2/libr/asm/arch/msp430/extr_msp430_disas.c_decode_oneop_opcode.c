
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int ut16 ;
struct msp430_cmd {int opcode; char* operands; int type; int instr; } ;



 int MSP430_ONEOP ;
 size_t get_as (int) ;
 size_t get_dst (int) ;
 int get_oneop_opcode (int) ;
 char** msp430_register_names ;
 char** one_op_instrs ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int decode_oneop_opcode(ut16 instr, ut16 op, struct msp430_cmd *cmd)
{
 int ret = 2;
 ut8 as, opcode;

 opcode = get_oneop_opcode(instr);

 as = get_as(instr);

 snprintf(cmd->instr, sizeof (cmd->instr), "%s", one_op_instrs[opcode]);

 cmd->opcode = get_oneop_opcode(instr);

 switch (get_oneop_opcode(instr)) {
 case 131:
 case 129:
 case 132:
 case 128:
 case 135:
 case 137:
  switch (as) {
  case 0:
   switch (get_dst(instr)) {
   case 134:
    snprintf(cmd->operands, sizeof (cmd->operands), "#0");
    break;
   default:
    snprintf(cmd->operands, sizeof (cmd->operands),
      "%s", msp430_register_names[get_dst(instr)]);
   }
   ret = 2;
   break;
  case 1:

   ret = 4;
   switch (get_dst(instr)) {
   case 134:
    snprintf(cmd->operands, sizeof (cmd->operands), "#1");

    ret = 2;
    break;
   case 136:
    snprintf(cmd->operands, sizeof (cmd->operands), "0x%04x", op);
    break;
   case 130:
    snprintf(cmd->operands, sizeof (cmd->operands), "&0x%04x", op);
    break;
   default:
    snprintf(cmd->operands, sizeof (cmd->operands),
      "0x%x(%s)", op, msp430_register_names[get_dst(instr)]);
   }

   break;
  case 2:
   switch (get_dst(instr)) {
   case 130:
    snprintf(cmd->operands, sizeof (cmd->operands), "#4");
    break;
   case 134:
    snprintf(cmd->operands, sizeof (cmd->operands), "#2");
    break;
   default:
    snprintf(cmd->operands, sizeof (cmd->operands),
      "@%s", msp430_register_names[get_dst(instr)]);
   }

   ret = 2;
   break;
  case 3:
   snprintf(cmd->operands, sizeof (cmd->operands), "#0x%04x", op);
   ret = 4;
   break;
  default:
   ret = -1;
  }
  break;
 case 133:
  cmd->operands[0] = '\0';
  break;
 }

 cmd->type = MSP430_ONEOP;

 return ret;
}
