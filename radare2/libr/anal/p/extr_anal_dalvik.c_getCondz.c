
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static const char *getCondz(ut8 cond) {
 switch (cond) {
 case 0x38:
  return "NOP";
 case 0x39:
  return "!";
 case 0x3a:
  return "0,==,63,$c,!";
 case 0x3b:
  return "0,==,63,$c,$z,|";
 case 0x3c:
  return "0,==,63,$c";
 case 0x3d:
  return "0,==,63,$c,!";
 }
 return "";
}
