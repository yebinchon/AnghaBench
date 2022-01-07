
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrategyNumber ;
__attribute__((used)) static bool
is_bounding_box_test_exact(StrategyNumber strategy)
{
 switch (strategy)
 {
  case 133:
  case 130:
  case 129:
  case 128:
  case 131:
  case 134:
  case 135:
  case 132:
   return 1;

  default:
   return 0;
 }
}
