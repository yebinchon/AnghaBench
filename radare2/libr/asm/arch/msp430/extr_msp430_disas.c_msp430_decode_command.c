
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct msp430_cmd {char* operands; int instr; int type; } ;


 int MSP430_INV ;
 int MSP430_TWOOP ;




 int decode_jmp (int,struct msp430_cmd*) ;
 int decode_oneop_opcode (int,int,struct msp430_cmd*) ;
 int decode_twoop_opcode (int,int,int,struct msp430_cmd*) ;
 int get_twoop_opcode (int) ;
 int r_read_at_le16 (int const*,int) ;
 int r_read_le16 (int const*) ;
 int snprintf (int ,int,char*) ;

int msp430_decode_command(const ut8 *in, int len, struct msp430_cmd *cmd) {
 int ret = -1;
 ut16 operand1 = 0, operand2 = 0;
 if (len < 2) {
  return -1;
 }
 ut16 instr = r_read_le16 (in);
 ut8 opcode = get_twoop_opcode (instr);

 switch (opcode) {
 case 131:

  break;
 case 128:

  if ((instr & 0x0f80) <= 0x0300) {

   if (len >= 4) {
    operand1 = r_read_at_le16 (in, 2);
   }
   ret = decode_oneop_opcode(instr, operand1, cmd);
  }
  break;
 case 130:
 case 129:

  decode_jmp (instr, cmd);
  ret = 2;
  break;
 default:

  cmd->type = MSP430_TWOOP;
  if (len >= 4) {
   operand1 = r_read_at_le16 (in, 2);
   if (len >= 6) {
    operand2 = r_read_at_le16 (in, 4);
   }
  }
  ret = decode_twoop_opcode (instr, operand1, operand2, cmd);
  break;
 }



 if (ret < 0) {
  cmd->type = MSP430_INV;
  snprintf(cmd->instr, sizeof (cmd->instr), "invalid");
  cmd->operands[0] = '\0';
  ret = 2;
 }

 return ret;
}
