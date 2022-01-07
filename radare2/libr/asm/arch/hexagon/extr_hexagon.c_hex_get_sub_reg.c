
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* hex_get_sub_reg(int opreg)
{
 switch (opreg) {
  case 143:
   return "R0";
  case 142:
   return "R1";
  case 137:
   return "R2";
  case 132:
   return "R3";
  case 131:
   return "R4";
  case 130:
   return "R5";
  case 129:
   return "R6";
  case 128:
   return "R7";
  case 141:
   return "R16";
  case 140:
   return "R17";
  case 139:
   return "R18";
  case 138:
   return "R19";
  case 136:
   return "R20";
  case 135:
   return "R21";
  case 134:
   return "R22";
  case 133:
   return "R23";
  default:
   return "<err>";
 }
}
