
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

char* hex_get_sys_reg(int opreg)
{
 static char tmp[5];
 switch (opreg) {
  case 133:
   return "SGP0";
  case 132:
   return "SGP1";
  case 130:
   return "STID";
  case 158:
   return "ELR";
  case 167:
   return "BADVA0";
  case 166:
   return "BADVA1";
  case 131:
   return "SSR";
  case 161:
   return "CCR";
  case 156:
   return "HTID";
  case 168:
   return "BADVA";
  case 152:
   return "IMASK";
  case 157:
   return "EVB";
  case 143:
   return "MODECTL";
  case 129:
   return "SYSCFG";
  case 151:
   return "IPEND";
  case 128:
   return "VID";
  case 155:
   return "IAD";
  case 153:
   return "IEL";
  case 154:
   return "IAHL";
  case 160:
   return "CFGBASE";
  case 159:
   return "DIAG";
  case 134:
   return "REV";
  case 141:
   return "PCYCLELO";
  case 142:
   return "PCYCLEHI";
  case 144:
   return "ISDBST";
  case 150:
   return "ISDBCFG0";
  case 149:
   return "ISDBCFG1";
  case 163:
   return "BRKPTPC0";
  case 165:
   return "BRKPTCFG0";
  case 162:
   return "BRKPTPC1";
  case 164:
   return "BRKPTCFG1";
  case 146:
   return "ISDBMBXIN";
  case 145:
   return "ISDBMBXOUT";
  case 148:
   return "ISDBEN";
  case 147:
   return "ISDBGPR";
  case 139:
   return "PMUCNT0";
  case 138:
   return "PMUCNT1";
  case 137:
   return "PMUCNT2";
  case 136:
   return "PMUCNT3";
  case 135:
   return "PMUEVTCFG";
  case 140:
   return "PMUCFG";
  default:
   sprintf(tmp, "S%d", opreg);
   return tmp;
 }
}
