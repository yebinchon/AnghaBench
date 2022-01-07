
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int mod(int a, int b) {
 if (b < 0) {
  return mod (-a, -b);
 }
 int ret = a % b;
 if (ret < 0) {
  ret += b;
 }
 return ret;
}
