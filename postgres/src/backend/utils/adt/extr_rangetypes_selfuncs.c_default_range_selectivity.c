
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 double DEFAULT_INEQ_SEL ;
 double DEFAULT_RANGE_INEQ_SEL ;
__attribute__((used)) static double
default_range_selectivity(Oid operator)
{
 switch (operator)
 {
  case 129:
   return 0.01;

  case 138:
  case 140:
   return 0.005;

  case 139:
  case 137:





   return DEFAULT_RANGE_INEQ_SEL;

  case 132:
  case 133:
  case 135:
  case 136:
  case 134:
  case 128:
  case 131:
  case 130:

   return DEFAULT_INEQ_SEL;

  default:

   return 0.01;
 }
}
