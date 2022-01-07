
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32 ;



__attribute__((used)) static int
Operand_tp7_encode (uint32 *valp)
{
  unsigned t_0, tp7_0;
  tp7_0 = *valp;
  t_0 = (tp7_0 - 0x7) & 0xf;
  *valp = t_0;
  return 0;
}
