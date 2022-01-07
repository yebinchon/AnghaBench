
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32 ;



__attribute__((used)) static int
Operand_xt_wbr18_label_encode (uint32 *valp)
{
  unsigned xt_wbr18_imm_0, xt_wbr18_label_0;
  xt_wbr18_label_0 = *valp;
  xt_wbr18_imm_0 = (xt_wbr18_label_0 - 0x4) & 0x3ffff;
  *valp = xt_wbr18_imm_0;
  return 0;
}
