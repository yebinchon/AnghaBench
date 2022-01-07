
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static int
Operand_mr1_encode (uint32 *valp)
{
  int error;
  error = (*valp & ~0x3) != 0;
  return error;
}
