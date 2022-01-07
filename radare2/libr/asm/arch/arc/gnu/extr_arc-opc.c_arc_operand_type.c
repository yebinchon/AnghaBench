
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUXREG ;
 int AUXREG_AC ;
 int COND ;
 int COND_AC ;
 int REG ;
 int REG_AC ;
 int arc_mach_a4 ;

int
arc_operand_type (int opertype)
{
  switch (opertype)
    {
    case 0:
      return (arc_mach_a4 ? COND : COND_AC);
    case 1:
      return (arc_mach_a4 ? REG : REG_AC);
    case 2:
      return (arc_mach_a4 ? AUXREG : AUXREG_AC);
    default:
      return 0;
    }
}
