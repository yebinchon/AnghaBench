
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hexagon_operand ;


 int const* hexagon_operand_find_xx16 (int const*,char*) ;

const hexagon_operand *
hexagon_operand_find_lo16
(const hexagon_operand *operand)
{
  return hexagon_operand_find_xx16 (operand, "_lo16");
}
