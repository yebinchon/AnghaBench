
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct msp430_cmd {char* operands; } ;
typedef int dstbuf ;





 int decode_emulation (int,struct msp430_cmd*) ;
 int get_ad (int) ;
 int get_as (int) ;
 int get_dst (int) ;
 int get_src (int) ;
 int memset (char*,int ,int) ;
 char** msp430_register_names ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strlen (char*) ;
 int strncat (char*,char*,scalar_t__) ;

__attribute__((used)) static int decode_addressing_mode(ut16 instr, ut16 op1, ut16 op2, struct msp430_cmd *cmd)
{
 int ret = 0, srcOperInCodeWord = 0;
 ut8 as, ad, src, dst;
 ut16 op;
 char dstbuf[16];

 memset(dstbuf, 0, sizeof(dstbuf));

 as = get_as(instr);
 ad = get_ad(instr);
 src = get_src(instr);
 dst = get_dst(instr);


 switch (as) {
 case 0:
  switch (src) {
  case 129:
   snprintf(cmd->operands, sizeof (cmd->operands), "#0");
   break;
  default:
   snprintf(cmd->operands, sizeof (cmd->operands), "%s", msp430_register_names[src]);
  }
  ret = 2;
  break;
 case 1:
  ret = 4;
  switch (src) {
  case 130:
   snprintf(cmd->operands, sizeof (cmd->operands), "0x%04x", op1);
   srcOperInCodeWord = 1;
   break;
  case 129:
   snprintf(cmd->operands, sizeof (cmd->operands), "%s", "#1");
   ret = 2;
   break;
  case 128:
   snprintf(cmd->operands, sizeof (cmd->operands), "&0x%04x", op1);
   srcOperInCodeWord = 1;
   break;
  default:
   snprintf(cmd->operands, sizeof (cmd->operands), "0x%x(%s)", op1, msp430_register_names[src]);
   srcOperInCodeWord = 1;
  }
  break;
 case 2:
  switch (src) {
  case 128:
   snprintf(cmd->operands, sizeof (cmd->operands), "#4");
   break;
  case 129:
   snprintf(cmd->operands, sizeof (cmd->operands), "#2");
   break;
  default:
   snprintf(cmd->operands, sizeof (cmd->operands), "@%s", msp430_register_names[src]);
  }
  ret = 2;
  break;
 case 3:
  ret = 2;
  switch (src) {
  case 128:
   snprintf(cmd->operands, sizeof (cmd->operands), "#8");
   break;
  case 129:
   snprintf(cmd->operands, sizeof (cmd->operands), "#-1");
   break;
  case 130:
   snprintf(cmd->operands, sizeof (cmd->operands), "#0x%04x", op1);
   srcOperInCodeWord = 1;
   ret = 4;
   break;
  default:
   snprintf(cmd->operands, sizeof (cmd->operands), "@%s+", msp430_register_names[src]);
  }
  break;
 }


 switch (ad) {
 case 0:
  snprintf(dstbuf, sizeof (dstbuf), ", %s", msp430_register_names[dst]);
  break;
 case 1:

  if (srcOperInCodeWord != 0) {
      op = op2;
      ret = 6;
  } else {
      op = op1;
      ret = 4;
  }
  switch (get_dst(instr)) {
  case 130:
   snprintf(dstbuf, sizeof (dstbuf), ", 0x%04x", op);
   break;
  case 128:
       snprintf(dstbuf, sizeof (dstbuf), ", &0x%04x", op);
   break;
  default:
   snprintf(dstbuf, sizeof (dstbuf), ", 0x%x(%s)", op, msp430_register_names[dst]);
  }
  break;
 }

 strncat(cmd->operands, dstbuf, sizeof (cmd->operands) - 1 - strlen(cmd->operands));
 decode_emulation(instr, cmd);
 return ret;
}
