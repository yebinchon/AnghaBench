
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



const char * get_mmm_str(ut8 key, char * str)
{
 switch (key & 7) {
 default:
 case 0x00: return "*ARn";
 case 0x01: return "*ARn+";
 case 0x02: return "*ARn-";



 case 0x03: return "*(ARn + t0)";
 case 0x04: return "*(ARn + t1)";



 case 0x05: return "*(ARn - t0)";
 case 0x06: return "*(ARn - t1)";



 case 0x07: return "*ARn(t0)";
 };
}
