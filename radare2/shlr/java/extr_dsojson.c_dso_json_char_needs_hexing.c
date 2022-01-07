
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



ut8 dso_json_char_needs_hexing ( ut8 b) {
 if (b < 0x20) {
  return 1;
 }
 switch (b) {
 case 0x7f:
 case 0x81:
 case 0x8F:
 case 0x90:
 case 0x9D:
 case 0xA0:
 case 0xAD:
  return 1;
 }
 return 0;
}
