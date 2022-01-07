
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct cr16_cmd {int dummy; } ;
 int cr16_decode_bal (int const*,struct cr16_cmd*) ;
 int cr16_decode_bcond01i (int const*,struct cr16_cmd*) ;
 int cr16_decode_bcond_br (int const*,struct cr16_cmd*) ;
 int cr16_decode_biti (int const*,struct cr16_cmd*) ;
 int cr16_decode_i_r (int const*,struct cr16_cmd*) ;
 int cr16_decode_jmp (int const*,struct cr16_cmd*) ;
 int cr16_decode_ld_st (int const*,struct cr16_cmd*) ;
 int cr16_decode_loadm_storm (int const*,struct cr16_cmd*) ;
 int cr16_decode_misc (int const*,struct cr16_cmd*) ;
 int cr16_decode_movd (int const*,struct cr16_cmd*) ;
 int cr16_decode_movz (int const*,struct cr16_cmd*) ;
 int cr16_decode_muls (int const*,struct cr16_cmd*) ;
 int cr16_decode_push_pop (int const*,struct cr16_cmd*) ;
 int cr16_decode_r_r (int const*,struct cr16_cmd*) ;
 int cr16_decode_scond (int const*,struct cr16_cmd*) ;
 int cr16_decode_slpr (int const*,struct cr16_cmd*) ;
 int cr16_get_opcode_hi (int) ;
 int const cr16_get_opcode_low (int) ;
 int r_read_le16 (int const*) ;

int cr16_decode_command(const ut8 *instr, struct cr16_cmd *cmd)
{
 int ret;
 ut16 in;
 in = r_read_le16 (instr);

 switch (cr16_get_opcode_low(in)) {
 case 148:
 case 163:
 case 161:
 case 162:
 case 144:
 case 132:
 case 131:
 case 155:
 case 160:
 case 140:
 case 128:
 case 159:
 case 149:
  switch(cr16_get_opcode_hi(in)) {
  case 154:
   ret = cr16_decode_i_r(instr, cmd);
   break;
  case 135:
   ret = cr16_decode_r_r(instr, cmd);
   break;
  default:
   ret = -1;
  }
  if (ret == -1 && cr16_get_opcode_low(in) == 155) {
   ret = cr16_decode_scond(instr, cmd);
  }
  break;
 case 157:
  ret = cr16_decode_bcond01i(instr, cmd);
  break;
 case 156:
  ret = cr16_decode_biti(instr, cmd);
  break;
 default:
  ret = -1;
 }

 if (ret != -1) {
  return ret;
 }

 switch ((in >> 13)) {
 case 0x2:
 case 0x0:
  ret = cr16_decode_bcond_br(instr, cmd);
  break;
 }

 if (ret != -1) {
  return ret;
 }

 switch (in >> 9) {
 case 150:
 case 134:
  ret = cr16_decode_slpr(instr, cmd);
  break;
 case 129:
  ret = cr16_decode_r_r(instr, cmd);
  if (ret == -1) {
   ret = cr16_decode_bal (instr, cmd);
  }
  break;
 case 130:
  ret = cr16_decode_i_r(instr, cmd);
  break;
 case 158:
  ret = cr16_decode_bal(instr, cmd);
  break;
 case 152:
 case 153:
 case 0x0B:
  ret = cr16_decode_jmp(instr, cmd);
  if (ret == -1) {
   ret = cr16_decode_bcond_br (instr, cmd);
  }
  break;
 case 146:
 case 145:
  ret = cr16_decode_movz(instr, cmd);
  break;
 case 143:
 case 142:
 case 141:
  ret = cr16_decode_muls(instr, cmd);
  break;
 }

 if (ret != -1) {
  return ret;
 }

 switch (in >> 7) {
 case 136:
 case 139:
 case 138:
 case 137:
  ret = cr16_decode_push_pop(instr, cmd);
  break;
 case 151:
 case 133:
  ret = cr16_decode_loadm_storm(instr, cmd);
  break;
 }

 if (ret != -1) {
  return ret;
 }

 switch (in >> 10) {
 case 147:
  ret = cr16_decode_movd(instr, cmd);
  break;
 }

 if (ret != -1) {
  return ret;
 }

 ret = cr16_decode_misc(instr, cmd);

 if (ret != -1) {
  return ret;
 }

 switch (cr16_get_opcode_hi(in)) {
 case 0x2:
 case 0x3:
 case 0x1:
 case 0x0:
  ret = cr16_decode_ld_st(instr, cmd);
  break;
 }

 if (ret != -1) {
  return ret;
 }
 return ret;
}
