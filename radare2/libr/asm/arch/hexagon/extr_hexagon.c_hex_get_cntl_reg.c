
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* hex_get_cntl_reg(int opreg){
 switch (opreg) {
  case 135:
   return "SA0";
  case 143:
   return "LC0";
  case 134:
   return "SA1";
  case 142:
   return "LC1";
  case 139:
   return "P";
  case 141:
   return "M0";
  case 140:
   return "M1";
  case 130:
   return "USR";
  case 138:
   return "PC";
  case 133:
   return "UGP";
  case 144:
   return "GP";
  case 148:
   return "CS0";
  case 147:
   return "CS1";
  case 131:
   return "UPCYCLELO";
  case 132:
   return "UPCYCLEHI";
  case 145:
   return "FRAMELIMIT";
  case 146:
   return "FRAMEKEY";
  case 136:
   return "PKTCOUNTLO";
  case 137:
   return "PKTCOUNTHI";
  case 128:
   return "UTIMERLO";
  case 129:
   return "UTIMERHI";
  default:
   return "<CRerr>";
 }
}
