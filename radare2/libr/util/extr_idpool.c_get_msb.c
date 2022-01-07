
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;



__attribute__((used)) static ut32 get_msb(ut32 v) {
 int i;
 for (i = 31; i > (-1); i--) {
  if (v & (0x1U << i)) {
   return (v & (0x1U << i));
  }
 }
 return 0;
}
