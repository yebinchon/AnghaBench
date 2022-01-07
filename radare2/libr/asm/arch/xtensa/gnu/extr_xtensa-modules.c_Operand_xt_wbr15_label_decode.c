
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static int
Operand_xt_wbr15_label_decode (uint32 *valp)
{
  unsigned xt_wbr15_label_0, xt_wbr15_imm_0;
  xt_wbr15_imm_0 = *valp & 0x7fff;
  xt_wbr15_label_0 = 0x4 + (((int) xt_wbr15_imm_0 << 17) >> 17);
  *valp = xt_wbr15_label_0;
  return 0;
}
