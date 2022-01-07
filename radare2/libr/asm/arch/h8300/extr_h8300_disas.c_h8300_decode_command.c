
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {int dummy; } ;
 int decode_abs162r16 (int const*,struct h8300_cmd*) ;
 int decode_abs2r_short (int const*,struct h8300_cmd*) ;
 int decode_adds (int const*,struct h8300_cmd*) ;
 int decode_andc (int const*,struct h8300_cmd*) ;
 int decode_bsr (int const*,struct h8300_cmd*) ;
 int decode_daa (int const*,struct h8300_cmd*) ;
 int decode_disp162r16 (int const*,struct h8300_cmd*) ;
 int decode_eepmov (int const*,struct h8300_cmd*) ;
 int decode_imm162r16 (int const*,struct h8300_cmd*) ;
 int decode_imm2abs8 (int const*,struct h8300_cmd*) ;
 int decode_imm2ind16 (int const*,struct h8300_cmd*) ;
 int decode_imm2r8 (int const*,struct h8300_cmd*) ;
 int decode_imm2r_short (int const*,struct h8300_cmd*) ;
 int decode_ind162r16 (int const*,struct h8300_cmd*) ;
 int decode_indinc162r16 (int const*,struct h8300_cmd*) ;
 int decode_jmp_abs16 (int const*,struct h8300_cmd*) ;
 int decode_jmp_abs8 (int const*,struct h8300_cmd*) ;
 int decode_jmp_ind (int const*,struct h8300_cmd*) ;
 int decode_ldc (int const*,struct h8300_cmd*) ;
 int decode_nop (int const*,struct h8300_cmd*) ;
 int decode_r162r16 (int const*,struct h8300_cmd*) ;
 int decode_r2abs8 (int const*,struct h8300_cmd*) ;
 int decode_r2imm_short (int const*,struct h8300_cmd*) ;
 int decode_r2ind16 (int const*,struct h8300_cmd*) ;
 int decode_r2r8 (int const*,struct h8300_cmd*) ;
 int decode_r82abs16 (int const*,struct h8300_cmd*) ;
 int decode_r82dispr16 (int const*,struct h8300_cmd*) ;
 int decode_r82ind16 (int const*,struct h8300_cmd*) ;
 int decode_r82r16 (int const*,struct h8300_cmd*) ;
 int decode_r82rdec16 (int const*,struct h8300_cmd*) ;
 int decode_subs (int const*,struct h8300_cmd*) ;

int h8300_decode_command(const ut8 *instr, struct h8300_cmd *cmd)
{
 int ret = 0;

 switch (instr[0] >> 4) {
 case 159:
  ret = decode_r2imm_short(instr, cmd);
  break;
 case 160:
  ret = decode_abs2r_short(instr, cmd);
  break;
 case 215:
 case 219:
 case 218:
 case 178:
 case 161:
 case 144:
 case 132:
 case 128:
  ret = decode_imm2r_short(instr, cmd);
  break;
 }

 if (ret) {
  {
   return ret;
  }
 }

 switch (instr[0]) {
 case 216:
  ret = decode_andc(instr, cmd);
  break;
 case 135:
  ret = decode_subs(instr, cmd);
  break;
 case 221:
 case 179:
  ret = decode_r162r16(instr, cmd);
  break;
 case 222:
  ret = decode_adds(instr, cmd);
  break;
 case 214:
 case 212:
 case 186:
 case 185:
 case 201:
 case 193:
 case 181:
 case 194:
 case 188:
  ret = decode_imm2r8(instr, cmd);
  break;
 case 217:
 case 223:
 case 209:
 case 131:
 case 133:
 case 220:
 case 130:
 case 195:
 case 189:
 case 180:
 case 163:
 case 184:
  ret = decode_r2r8(instr, cmd);
  break;
 case 210:
  switch(instr[2]) {
  case 0x60:
  case 0x61:
  case 0x62:
   ret = decode_r2ind16(instr, cmd);
   break;
  case 0x70:
  case 0x71:
  case 0x72:
  case 0x67:
  case 0x75:
   ret = decode_imm2ind16(instr, cmd);
   break;
  default:
   ret = -1;
  }
  break;
 case 211:
  switch (instr[2]) {
  case 0x60:
  case 0x61:
  case 0x62:
   ret = decode_r2abs8(instr, cmd);
   break;
  case 0x67:
  case 0x70:
  case 0x71:
  case 0x72:
   ret = decode_imm2abs8(instr, cmd);
   break;
  default:
   ret = -1;
  }
  break;
 case 202:
  ret = decode_imm2ind16(instr, cmd);
  break;
 case 203:
  ret = decode_imm2abs8(instr, cmd);
  break;
 case 187:
  ret = decode_bsr(instr, cmd);
  break;
 case 148:
  ret = decode_nop(instr, cmd);
  break;
 case 177:
 case 176:
 case 175:
 case 172:
 case 147:
 case 143:
 case 142:
 case 139:
 case 138:
  ret = decode_daa(instr, cmd);
  break;
 case 174:
 case 149:
  ret = decode_r82r16(instr, cmd);
  break;
 case 173:
 case 140:
 case 141:
 case 137:
  ret = decode_eepmov(instr, cmd);
  break;
 case 171:
 case 168:
  ret = decode_jmp_ind(instr, cmd);
  break;
 case 170:
 case 167:
  ret = decode_jmp_abs16(instr, cmd);
  break;
 case 169:
 case 166:
 case 191:
 case 190:
 case 204:
 case 199:
 case 213:
 case 208:
 case 196:
 case 207:
 case 183:
 case 182:
 case 192:
 case 197:
 case 206:
 case 198:
 case 205:
 case 200:
  ret = decode_jmp_abs8(instr, cmd);
  break;
 case 145:
 case 165:
 case 164:
 case 136:
 case 129:
  ret = decode_ldc(instr, cmd);
  break;
 case 146:
  ret = decode_r2r8(instr, cmd);
  break;
 case 162:
 case 134:
  ret = decode_r162r16(instr, cmd);
  break;
 case 156:
  ret = decode_imm162r16(instr, cmd);
  break;
 case 155:
  ret = decode_ind162r16(instr, cmd);
  break;
 case 157:
  ret = decode_disp162r16(instr, cmd);
  break;
 case 154:
  ret = decode_indinc162r16(instr, cmd);
  break;
 case 158:
  ret = decode_abs162r16(instr, cmd);
  break;
 case 151:
  ret = decode_r82ind16(instr, cmd);
  break;
 case 152:
  ret = decode_r82dispr16(instr, cmd);
  break;
 case 150:
  ret = decode_r82rdec16(instr, cmd);
  break;
 case 153:
  ret = decode_r82abs16(instr, cmd);
  break;
 default:
  return -1;
 }

 return ret;
}
