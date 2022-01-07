
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ud_operand {int dummy; } ;
struct ud {int dis_mode; scalar_t__ vex_op; } ;


 int REGCLASS_XMM ;
 int UD_ASSERT (int) ;
 int UD_RETURN_ON_ERROR (struct ud*) ;
 int decode_reg (struct ud*,struct ud_operand*,int ,int,unsigned int) ;
 int inp_next (struct ud*) ;

__attribute__((used)) static int
decode_vex_immreg(struct ud *u, struct ud_operand *opr, unsigned size)
{
  uint8_t imm = inp_next(u);
  uint8_t mask = u->dis_mode == 64 ? 0xf : 0x7;
  UD_RETURN_ON_ERROR(u);
  UD_ASSERT(u->vex_op != 0);
  decode_reg(u, opr, REGCLASS_XMM, mask & (imm >> 4), size);
  return 0;
}
