
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int is64 ;

__attribute__((used)) static const char *typeString(ut32 n, int *bits) {
 *bits = 32;
 if (n == 12) {
  return "arm";
 }
 if (n == 0x0100000c) {
  *bits = 64;
  is64 = 1;
  return "arm";
 }
 if (n == 0x0200000c) {

  is64 = 0;
  *bits = 64;
  return "arm";
 }
 return "x86";
}
