
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int int2hex(int i) {
 if (i >= 0 && i <= 9) {
  return i + 48;
 }
 if (i >= 10 && i <= 15) {
  return i + 87;
 }
 return -1;
}
