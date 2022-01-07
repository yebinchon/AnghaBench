
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct cr16_cmd {char* operands; int type; int instr; } ;





 int CR16_INSTR_MAXLEN ;


 int CR16_TYPE_DI ;
 int CR16_TYPE_EI ;
 int CR16_TYPE_EWAIT ;
 int CR16_TYPE_EXCP ;
 int CR16_TYPE_NOP ;
 int CR16_TYPE_RETX ;
 int CR16_TYPE_WAIT ;

 int r_read_le16 (int const*) ;
 int snprintf (char*,int ,char*,int) ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static int cr16_decode_misc(const ut8 *instr, struct cr16_cmd *cmd)
{
 ut16 c;
 int ret = 2;

 c = r_read_le16 (instr);

 cmd->operands[0] = '\0';
 switch (c) {
 case 129:
  strncpy(cmd->instr, "retx", CR16_INSTR_MAXLEN - 1);
  cmd->type = CR16_TYPE_RETX;
  break;
 case 133:
  strncpy(cmd->instr, "di", CR16_INSTR_MAXLEN - 1);
  cmd->type = CR16_TYPE_DI;
  break;
 case 132:
  strncpy(cmd->instr, "ei", CR16_INSTR_MAXLEN - 1);
  cmd->type = CR16_TYPE_EI;
  break;
 case 130:
  strncpy(cmd->instr, "nop", CR16_INSTR_MAXLEN - 1);
  cmd->type = CR16_TYPE_NOP;
  break;
 case 128:
  strncpy(cmd->instr, "wait", CR16_INSTR_MAXLEN - 1);
  cmd->type = CR16_TYPE_WAIT;
  break;
 case 131:
  strncpy(cmd->instr, "eiwait", CR16_INSTR_MAXLEN - 1);
  cmd->type = CR16_TYPE_EWAIT;
  break;
 default:
  switch (c >> 5) {
  case 0x3DF:
   strncpy(cmd->instr, "excp", CR16_INSTR_MAXLEN - 1);
   snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1,
     "0x%x", (c >> 1) & 0xF);
   cmd->type = CR16_TYPE_EXCP;
   break;
  default:
   ret = -1;
  }
 }

 return ret;
}
