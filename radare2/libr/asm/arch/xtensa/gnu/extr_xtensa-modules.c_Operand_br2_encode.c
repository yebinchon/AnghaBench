
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static int
Operand_br2_encode (uint32 *valp)
{
  int error;
  error = (*valp & ~(0x7 << 1)) != 0;
  *valp = *valp >> 1;
  return error;
}
