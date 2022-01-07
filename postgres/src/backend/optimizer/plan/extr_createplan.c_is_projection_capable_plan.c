
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Plan ;
 int nodeTag (int *) ;

bool
is_projection_capable_plan(Plan *plan)
{

 switch (nodeTag(plan))
 {
  case 138:
  case 135:
  case 129:
  case 128:
  case 130:
  case 136:
  case 137:
  case 133:
  case 139:
  case 134:
  case 131:
   return 0;
  case 132:







   return 0;
  default:
   break;
 }
 return 1;
}
