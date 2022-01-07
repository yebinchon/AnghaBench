
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct cr16_cmd {int dummy; } ;


 int CR16_TBIT_I_R ;
 int CR16_TBIT_R_R ;
 int cr16_anal_4bit_opcode (int,struct cr16_cmd*) ;
 int cr16_check_reg_boundaries (int) ;
 int cr16_get_dstreg (int) ;
 int cr16_get_short_imm (int) ;
 scalar_t__ cr16_print_4bit_opcode (struct cr16_cmd*,int) ;
 scalar_t__ cr16_print_4biti_opcode (struct cr16_cmd*,int) ;
 int cr16_print_med_reg (struct cr16_cmd*,int,int) ;
 int cr16_print_reg_med (struct cr16_cmd*,int,int) ;
 int cr16_print_reg_short (struct cr16_cmd*,int,int) ;
 int cr16_print_short_reg (struct cr16_cmd*,int,int) ;
 int r_read_at_le16 (int const*,int) ;
 int r_read_le16 (int const*) ;

__attribute__((used)) static inline int cr16_decode_i_r(const ut8 *instr, struct cr16_cmd *cmd)
{
 int ret = 2;
 ut16 in, immed, dstreg;

 in = r_read_le16 (instr);

 if (in == 0x0200) {
  return -1;
 }

 if (((in >> 9) != CR16_TBIT_I_R) && ((in >> 9) != CR16_TBIT_R_R)) {
  if (cr16_print_4biti_opcode(cmd, in)) {
   return -1;
  }
  cr16_anal_4bit_opcode(in, cmd);
 } else {
  if (cr16_print_4bit_opcode(cmd, in)) {
   return -1;
  }
 }

 switch((in & 0x1F) ^ 0x11) {
 case 0:
  if ((in & 0x1) == 0x1) {
   immed = r_read_at_le16 (instr, 2);
   ret = 4;
  } else {
   immed = cr16_get_short_imm(in);
  }
  if (((in >> 9) != CR16_TBIT_I_R) && ((in >> 9) != CR16_TBIT_R_R)) {
   if (cr16_print_med_reg(cmd, immed, cr16_get_dstreg(in))) {
    return -1;
   }
  } else {
   if (cr16_print_reg_med(cmd, immed, cr16_get_dstreg(in))) {
    return -1;
   }
  }
  break;
 default:
  dstreg = cr16_get_dstreg(in);

  if (cr16_check_reg_boundaries(dstreg)) {
   ret = -1;
   break;
  }

  if (((in >> 9) != CR16_TBIT_I_R) && ((in >> 9) != CR16_TBIT_R_R)) {
   if (cr16_print_short_reg(cmd, cr16_get_short_imm(in),
      cr16_get_dstreg(in))) {
    return -1;
   }
  } else {
   if (cr16_print_reg_short(cmd, cr16_get_short_imm(in),
      cr16_get_dstreg(in))) {
    return -1;
   }
  }
  break;
 }

 return ret;
}
