
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int sprintf (char*,char*,int) ;

const char * get_smem_str(ut8 key, char * str)
{


 if ((key & 0x01) == 0) {



  sprintf(str, "@0x%02X", key >> 1);

  return str;
 }



 switch (key) {
 case 0x11: return "abs16(k16)";
 case 0x31: return "*(k23)";
 case 0x51: return "port(k16)";
 case 0x71: return "*cdp";
 case 0x91: return "*cdp+";
 case 0xB1: return "*cdp-";
 case 0xD1: return "*cdp(K16)";
 case 0xF1: return "*+cdp(K16)";
 }

 switch (key & 0x1F) {
 case 0x01: return "*ARn";
 case 0x03: return "*ARn+";
 case 0x05: return "*ARn-";



 case 0x07: return "*(ARn + t0)";



 case 0x09: return "*(ARn - t0)";



 case 0x0B: return "*ARn(t0)";
 case 0x0D: return "*ARn(k16)";
 case 0x0F: return "*+ARn(k16)";



 case 0x13: return "*(ARn + t1)";



 case 0x15: return "*(ARn - t1)";



 case 0x17: return "*ARn(t1)";



 case 0x19: return "*+ARn";



 case 0x1B: return "*-ARn";



 case 0x1D: return "*(ARn + t0b)";



 case 0x1F: return "*(ARn - t0b)";
 }

 return "invalid";
}
