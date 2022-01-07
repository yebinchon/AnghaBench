
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct v850_cmd {int dummy; } ;
 int decode_3operands (int const*,int,struct v850_cmd*) ;
 int decode_bcond (int ,int,struct v850_cmd*) ;
 int decode_bit_op (int const*,int,struct v850_cmd*) ;
 int decode_extended (int const*,int,struct v850_cmd*) ;
 int decode_imm_reg (int ,struct v850_cmd*) ;
 int decode_jarl (int const*,int,struct v850_cmd*) ;
 int decode_load_store (int const*,int,struct v850_cmd*) ;
 int decode_reg_reg (int ,struct v850_cmd*) ;
 int get_opcode (int ) ;
 int r_read_le16 (int const*) ;

int v850_decode_command (const ut8 *instr, int len, struct v850_cmd *cmd) {
 int ret;

 if (len < 2) {
  return -1;
 }
 ut16 in = r_read_le16 (instr);

 switch (get_opcode (in)) {
 case 152:
 case 145:
 case 159:
 case 155:
 case 137:
 case 139:
 case 141:
 case 148:
 case 144:
 case 129:
 case 164:
 case 130:
 case 131:
 case 132:
 case 167:
 case 161:
  ret = decode_reg_reg (in, cmd);
  break;
 case 149:
 case 140:
 case 165:
 case 160:
 case 135:
 case 142:
 case 136:
 case 146:
  ret = decode_imm_reg (in, cmd);
  break;
 case 166:
 case 151:
 case 150:
 case 138:
 case 143:
 case 128:
 case 163:
 case 147:
  ret = decode_3operands (instr, len, cmd);
  break;
 case 157:
 case 156:
  ret = decode_jarl (instr, len, cmd);
  break;
 case 134:
 case 154:
 case 153:
 case 133:
  ret = decode_load_store (instr, len, cmd);
  break;
 case 162:
  ret = decode_bit_op (instr, len, cmd);
  break;
 case 158:
  ret = decode_extended (instr, len, cmd);
  break;
 default:
  if ((get_opcode (in) >> 2) == 0xB) {
   ret = decode_bcond (in, len, cmd);
  } else {
   ret = -1;
  }
 }

 return ret;
}
