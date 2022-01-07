
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
typedef int ut16 ;
struct propeller_cmd {char* instr; char* operands; int src; int dst; int opcode; } ;
 int PROP_INSTR_MAXLEN ;
 int PROP_SUB ;



 int PROP_SUBX ;
 int decode_ext_cmd (struct propeller_cmd*,int) ;
 int decode_jmp (struct propeller_cmd*,int) ;
 int decode_prefix (struct propeller_cmd*,int) ;
 int get_con (int) ;
 int get_dst (int) ;
 int get_opcode (int) ;
 int get_src (int) ;
 int get_zcri (int) ;
 char** instrs ;
 int is_immediate (int) ;
 int r_read_be32 (int const*) ;
 int snprintf (char*,int,char*,...) ;

int propeller_decode_command(const ut8 *instr, struct propeller_cmd *cmd)
{
 int ret = -1;
 ut32 in;
 ut16 opcode;

 in = r_read_be32 (instr);

 opcode = get_opcode (in);

 if (!get_con (in)) {
  snprintf (cmd->instr, PROP_INSTR_MAXLEN, "nop");
  cmd->operands[0] = '\0';
  return 4;
 }

 switch (opcode) {
  case 186:
  case 185:
  case 184:
  case 183:
  case 182:
  case 181:
  case 180:
  case 179:
  case 178:
  case 177:
  case 176:
  case 175:
  case 174:
  case 173:
  case 172:
  case 169:
  case 168:
  case 167:
  case 166:
  case 165:
  case 164:
  case 163:
  case 162:
  case 161:
  case 160:
  case 159:
  case 158:
  case 157:
  case 156:
  case 155:
  case 154:
  case 153:
  case 152:
  case 151:
  case 150:
  case 149:
  case 148:
  case 147:

  case 146:
  case 145:
  case 144:
  case 143:
  case 142:
  case 141:
  case 140:
  case 139:
  case 138:

  case 137:
  case 136:
  case 135:
  case 134:

  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   snprintf (cmd->instr, sizeof cmd->instr, "%s", instrs[opcode]);

   if ((opcode == 149 || opcode == 148 ||
      opcode == 147) && (!(get_zcri (in) & 0x2))) {
    cmd->instr[0] = 'w';
    cmd->instr[1] = 'r';
   }

   if (opcode == PROP_SUB && in & 0x08000000) {
    snprintf (cmd->instr, PROP_INSTR_MAXLEN - 1, "sub");
   } else if (opcode == PROP_SUBX && in & 0x08000000) {
    snprintf (cmd->instr, PROP_INSTR_MAXLEN - 1, "subx");
   }

   if (is_immediate (in)) {
    cmd->src = get_src (in);
    cmd->dst = get_dst (in);
    snprintf (cmd->operands, PROP_INSTR_MAXLEN - 1, "0x%x, #%d",
      get_dst (in), get_src (in));
   } else {
    cmd->src = get_src (in) << 2;
    cmd->dst = get_dst (in);
    snprintf (cmd->operands, PROP_INSTR_MAXLEN - 1, "0x%x, 0x%x",
      get_dst (in), get_src (in) << 2);
   }

   ret = 4;
   break;
  case 171:
   ret = decode_ext_cmd (cmd, in);
   if (ret == -1) {
    snprintf (cmd->instr, PROP_INSTR_MAXLEN - 1, "%s",
      instrs[opcode]);

    if (is_immediate (in)) {
     cmd->src = get_src (in);
     cmd->dst = get_dst (in);

     snprintf (cmd->operands, PROP_INSTR_MAXLEN - 1, "0x%x, #%d",
       get_dst (in) << 2, get_src (in));
    } else {
     cmd->src = get_src (in);
     cmd->dst = get_dst (in);

     snprintf (cmd->operands, PROP_INSTR_MAXLEN - 1, "0x%x, 0x%x",
       get_dst (in), get_src (in));
    }

    ret = 4;
   }
   break;
  case 170:
   ret = decode_jmp (cmd, in);
   break;
 }

 cmd->opcode = opcode;

 if (ret > 0) {
  decode_prefix (cmd, in);
 }

 return ret;
}
