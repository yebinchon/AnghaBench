
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
 int eprintf (char*,int) ;

__attribute__((used)) static const char *cpusubtype_tostring (ut32 cputype, ut32 cpusubtype) {
 switch (cputype) {
 case 129:
  switch (cpusubtype) {
  case 146: return "all";
  case 153: return "vax780";
  case 152: return "vax785";
  case 154: return "vax750";
  case 155: return "vax730";
  case 158: return "uvaxI";
  case 157: return "uvaxII";
  case 151: return "vax8200";
  case 150: return "vax8500";
  case 149: return "vax8600";
  case 148: return "vax8650";
  case 147: return "vax8800";
  case 156: return "uvaxIII";
  default: return "Unknown vax subtype";
  }
 case 136:
  switch (cpusubtype) {
  case 198: return "mc68030";
  case 196: return "mc68040";
  case 197: return "mc68030 only";
  default: return "Unknown mc680x0 subtype";
  }
 case 138:
  switch (cpusubtype) {
  case 223: return "386";
  case 222: return "486";
  case 221: return "486sx";
  case 182: return "Pentium";
  case 173: return "Pentium Pro";
  case 181: return "Pentium 3 M3";
  case 180: return "Pentium 3 M5";
  case 206: return "Celeron";
  case 205: return "Celeron Mobile";
  case 179: return "Pentium 3";
  case 178: return "Pentium 3 M";
  case 177: return "Pentium 3 Xeon";
  case 174: return "Pentium Mobile";
  case 176: return "Pentium 4";
  case 175: return "Pentium 4 M";
  case 200: return "Itanium";
  case 199: return "Itanium 2";
  case 143: return "Xeon";
  case 142: return "Xeon MP";
  default: return "Unknown i386 subtype";
  }
 case 128:
  switch (cpusubtype & 0xff) {
  case 145: return "x86 64 all";
  case 144: return "x86 arch 1";
  default: return "Unknown x86 subtype";
  }
 case 135:
  switch (cpusubtype & 0xff) {
  case 195: return "all";
  case 194: return "mc88100";
  case 193: return "mc88110";
  default: return "Unknown mc88000 subtype";
  }
 case 134:
  switch (cpusubtype & 0xff) {
  case 192: return "all";
  case 191: return "mc98601";
  default: return "Unknown mc98000 subtype";
  }
 case 139:
  switch (cpusubtype & 0xff) {
  case 204: return "hppa7100";
  case 203: return "hppa7100LC";
  default: return "Unknown hppa subtype";
  }
 case 140:
  switch (cpusubtype & 0xff) {
  case 219: return "all";
  case 218: return "arm64v8";
  case 220: return "arm64e";
  default: return "Unknown arm64 subtype";
  }
  return "v8";
 case 141:
  switch (cpusubtype & 0xff) {
  case 217:
   return "all";
  case 216:
   return "v4t";
  case 215:
   return "v5";
  case 214:
   return "v6";
  case 207:
   return "xscale";
  case 213:
   return "v7";
  case 211:
   return "v7f";
  case 208:
   return "v7s";
  case 210:
   return "v7k";
  case 209:
   return "v7m";
  case 212:
   return "v7em";
  default:
   eprintf ("Unknown arm subtype %d\n", cpusubtype & 0xff);
   return "unknown arm subtype";
  }
 case 130:
  switch (cpusubtype & 0xff) {
  case 159: return "all";
  default: return "Unknown sparc subtype";
  }
 case 133:
  switch (cpusubtype & 0xff) {
  case 190: return "all";
  case 187: return "r2300";
  case 186: return "r2600";
  case 185: return "r2800";
  case 188: return "r2000a";
  case 189: return "r2000";
  case 183: return "r3000a";
  case 184: return "r3000";
  default: return "Unknown mips subtype";
  }
 case 137:
  switch (cpusubtype & 0xff) {
  case 201: return "all";
  case 202: return "860";
  default: return "Unknown i860 subtype";
  }
 case 132:
 case 131:
  switch (cpusubtype & 0xff) {
  case 160: return "all";
  case 172: return "601";
  case 171: return "602";
  case 170: return "603";
  case 169: return "603e";
  case 168: return "603ev";
  case 167: return "604";
  case 166: return "604e";
  case 165: return "620";
  case 162: return "750";
  case 164: return "7400";
  case 163: return "7450";
  case 161: return "970";
  default: return "Unknown ppc subtype";
  }
 }
 return "Unknown cputype";
}
