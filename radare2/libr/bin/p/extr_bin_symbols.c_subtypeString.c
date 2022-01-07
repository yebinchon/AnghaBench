
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *subtypeString(int n) {
 if (n == 9) {
  return "armv7";
 }
 return "?";
}
