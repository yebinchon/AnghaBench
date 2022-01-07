
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;



__attribute__((used)) static int countLeadingZeros(ut32 x) {
 int count = 0;
 while (x) {
  x >>= 1;
  --count;
 }
 return count;
}
