
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct v810_cmd {int dummy; } ;


 int OPCODE (int ) ;
 int decode_3operands (int ,int ,struct v810_cmd*) ;
 int decode_bcond (int ,struct v810_cmd*) ;
 int decode_bit_op (int ,struct v810_cmd*) ;
 int decode_extended (int ,int ,struct v810_cmd*) ;
 int decode_imm_reg (int ,struct v810_cmd*) ;
 int decode_jump (int ,int ,struct v810_cmd*) ;
 int decode_load_store (int ,int ,struct v810_cmd*) ;
 int decode_reg_reg (int ,struct v810_cmd*) ;
 int r_read_le16 (int const*) ;

int v810_decode_command(const ut8 *instr, int len, struct v810_cmd *cmd) {
 int ret;
 ut16 word1 = 0;
 ut16 word2 = 0;

 word1 = r_read_le16 (instr);
 if (len >= 4) {
  word2 = r_read_le16 (instr + 2);
 }

 switch (OPCODE(word1)) {
 case 156:
 case 180:
 case 131:
 case 172:
 case 139:
 case 137:
 case 162:
 case 143:
 case 152:
 case 170:
 case 151:
 case 169:
 case 149:
 case 177:
 case 150:
 case 129:
  ret = decode_reg_reg (word1, cmd);
  break;
 case 153:
 case 178:
 case 140:
 case 171:
 case 138:
 case 136:
 case 173:
 case 142:
 case 130:
 case 144:
 case 167:
 case 158:
 case 133:
 case 141:
  ret = decode_imm_reg (word1, cmd);
  break;
 case 155:
 case 179:
 case 148:
 case 176:
 case 128:
 case 154:
  ret = decode_3operands (word1, word2, cmd);
  break;
 case 161:
 case 163:
  ret = decode_jump (word1, word2, cmd);
  break;
 case 160:
 case 159:
 case 157:
 case 135:
 case 134:
 case 132:
 case 166:
 case 165:
 case 174:
 case 164:
 case 147:
 case 146:
 case 145:
  ret = decode_load_store (word1, word2, cmd);
  break;
 case 175:
  ret = decode_bit_op (word1, cmd);
  break;
 case 168:
  ret = decode_extended (word1, word2, cmd);
  break;
 default:
  if ((OPCODE(word1) >> 3) == 0x4) {
   ret = decode_bcond (word1, cmd);
  } else {
   ret = -1;
  }
 }

 if ((ret > 0) && (len < ret)) {
  ret = -1;
 }

 return ret;
}
