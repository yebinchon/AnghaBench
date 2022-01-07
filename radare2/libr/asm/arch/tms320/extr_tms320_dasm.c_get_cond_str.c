
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 char* get_freg_str (int,int *) ;
 int sprintf (char*,char*,...) ;

const char * get_cond_str(ut8 key, char * str)
{

 if ((key >> 4) <= 5) {
  static const char * op[6] = { "==", "!=", "<", "<=", ">", ">=" };
  sprintf(str, "%s %s 0", get_freg_str(key & 15, ((void*)0)), op[(key >> 4) & 7]);
  return str;
 }


 if ((key >> 2) == 0x18) {
  sprintf(str, "overflow(ac%d)", key & 3);
  return str;
 }


 if ((key >> 2) == 0x1C) {
  sprintf(str, "!overflow(ac%d)", key & 3);
  return str;
 }

 switch (key) {
 case 0x64: return "tc1";
 case 0x65: return "tc2";
 case 0x66: return "carry";
 case 0x74: return "!tc1";
 case 0x75: return "!tc2";
 case 0x76: return "!carry";

 case 0x68: return "tc1 & tc2";
 case 0x69: return "tc1 & !tc2";
 case 0x6A: return "!tc1 & tc2";
 case 0x6B: return "!tc1 & !tc2";

 case 0x78: return "tc1 | tc2";
 case 0x79: return "tc1 | !tc2";
 case 0x7A: return "!tc1 | tc2";
 case 0x7B: return "!tc1 | !tc2";

 case 0x7C: return "tc1 ^ tc2";
 case 0x7D: return "tc1 ^ !tc2";
 case 0x7E: return "!tc1 ^ tc2";
 case 0x7F: return "!tc1 ^ !tc2";
 }

 return "invalid";
}
