
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static int
Operand_br8_decode (uint32 *valp)
{
  *valp = *valp << 3;
  return 0;
}
