
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonPathItemType ;
__attribute__((used)) static int
operationPriority(JsonPathItemType op)
{
 switch (op)
 {
  case 131:
   return 0;
  case 142:
   return 1;
  case 140:
  case 132:
  case 137:
  case 139:
  case 136:
  case 138:
  case 129:
   return 2;
  case 143:
  case 128:
   return 3;
  case 133:
  case 141:
  case 134:
   return 4;
  case 130:
  case 135:
   return 5;
  default:
   return 6;
 }
}
