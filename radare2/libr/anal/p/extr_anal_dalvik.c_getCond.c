
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static const char *getCond(ut8 cond) {
 switch (cond) {
 case 0x32:
  return "$z";
 case 0x33:
  return "$z,!";
 case 0x34:
  return "63,$c,!";
 case 0x35:
  return "63,$c,$z,|";
 case 0x36:
  return "63,$c";
 case 0x37:
  return "63,$c,!,$z,|";
 }
 return "";
}
