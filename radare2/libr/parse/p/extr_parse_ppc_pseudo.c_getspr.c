
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int cspr ;
 int snprintf (char*,int,char*,int) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static const char* getspr(const char *reg) {
 static char cspr[16];
 ut32 spr = 0;
 if (!reg) {
  return ((void*)0);
 }
 spr = strtol(reg, ((void*)0), 16);
 if (spr > 9999) {
  return ((void*)0);
 }

 switch (spr) {
  case 163:
   return "mq";
  case 128:
   return "xer";
  case 154:
   return "rtcu";
  case 155:
   return "rtcl";
  case 166:
   return "lr";
  case 202:
   return "ctr";
  case 188:
   return "dsisr";
  case 200:
   return "dar";
  case 190:
   return "dec";
  case 152:
   return "sdr1";
  case 145:
   return "srr0";
  case 144:
   return "srr1";
  case 129:
   return "vrsave";
  case 142:
   return "tbrl";
  case 141:
   return "tbru";
  case 149:
   return "sprg0";
  case 148:
   return "sprg1";
  case 147:
   return "sprg2";
  case 146:
   return "sprg3";
  case 187:
   return "ear";
  case 143:
   return "tbl";
  case 140:
   return "tbu";
  case 157:
   return "pvr";
  case 150:
   return "spefscr";
  case 176:
   return "ibat0u";
  case 177:
   return "ibat0l";
  case 174:
   return "ibat1u";
  case 175:
   return "ibat1l";
  case 172:
   return "ibat2u";
  case 173:
   return "ibat2l";
  case 170:
   return "ibat3u";
  case 171:
   return "ibat3l";
  case 198:
   return "dbat0u";
  case 199:
   return "dbat0l";
  case 196:
   return "dbat1u";
  case 197:
   return "dbat1l";
  case 194:
   return "dbat2u";
  case 195:
   return "dbat2l";
  case 192:
   return "dbat3u";
  case 193:
   return "dbat3l";
  case 136:
   return "ummcr0";
  case 135:
   return "ummcr1";
  case 134:
   return "upmc1";
  case 133:
   return "upmc2";
  case 130:
   return "usia";
  case 132:
   return "upmc3";
  case 131:
   return "upmc4";
  case 165:
   return "mmcr0";
  case 161:
   return "pmc1";
  case 160:
   return "pmc2";
  case 151:
   return "sia";
  case 164:
   return "mmcr1";
  case 159:
   return "pmc3";
  case 158:
   return "pmc4";
  case 153:
   return "sda";
  case 189:
   return "dmiss";
  case 191:
   return "dcmp";
  case 186:
   return "hash1";
  case 185:
   return "hash2";
  case 167:
   return "imiss";
  case 169:
   return "icmp";
  case 156:
   return "rpa";
  case 184:
   return "hid0";
  case 183:
   return "hid1";
  case 178:
   return "iabr";
  case 182:
   return "hid2";
  case 181:
   return "hid4";
  case 201:
   return "dabr";
  case 180:
   return "hid5";
  case 179:
   return "hid6";


  case 168:
   return "ictc";
  case 139:
   return "thrm1";
  case 138:
   return "thrm2";
  case 137:
   return "thrm3";
  case 162:
   return "pir";
  default:
   snprintf(cspr, sizeof(cspr), "spr_%u", spr);
   break;
 }
 return cspr;
}
