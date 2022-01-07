
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* hex_get_sub_regpair(int opreg)
{
 switch (opreg) {
  case 133:
   return "R1:R0";
  case 130:
   return "R3:R2";
  case 129:
   return "R5:R4";
  case 128:
   return "R7:R6";
  case 135:
   return "R17:R16";
  case 134:
   return "R19:R18";
  case 132:
   return "R21:R20";
  case 131:
   return "R23:R22";
  default:
   return "<err>";
 }
}
