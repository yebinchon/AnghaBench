
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
 int cr16_get_dstreg (int) ;
 int cr16_get_srcreg (int) ;
 scalar_t__ cr16_print_4bit_opcode (struct cr16_cmd*,int) ;
 scalar_t__ cr16_print_4biti_opcode (struct cr16_cmd*,int) ;
 scalar_t__ cr16_print_reg_reg (struct cr16_cmd*,int ,int ) ;
 int r_read_le16 (int const*) ;

__attribute__((used)) static int cr16_decode_r_r(const ut8 *instr, struct cr16_cmd *cmd) {
 int ret = 2;
 ut16 c;

 c = r_read_le16 (instr);

 if (!(c & 0x1)) {
  return -1;
 }

 if (((c >> 9) != CR16_TBIT_I_R) && ((c >> 9) != CR16_TBIT_R_R)) {
  if (cr16_print_4biti_opcode(cmd, c)) {
   return -1;
  }
  cr16_anal_4bit_opcode(c, cmd);
 } else {
  if (cr16_print_4bit_opcode(cmd, c)) {
   return -1;
  }
 }

 if (cr16_print_reg_reg(cmd, cr16_get_srcreg(c), cr16_get_dstreg(c))) {
  return -1;
 }

 return ret;
}
