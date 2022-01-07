
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;



__attribute__((used)) static bool isAllZeros(const ut8 *buf, int len) {
 int i;
 for (i = 0; i < len; i++) {
  if (buf[i] != 0) {
   return 0;
  }
 }
 return 1;
}
