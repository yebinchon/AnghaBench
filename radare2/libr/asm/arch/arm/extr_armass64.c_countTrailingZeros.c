
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;



__attribute__((used)) static int countTrailingZeros(ut32 x) {
 int count = 0;
 while (x > 0) {
  if ((x & 1) == 1) {
   break;
  } else {
   count ++;
   x = x >> 1;
  }
 }
 return count;
}
