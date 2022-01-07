
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static __inline void swap_bytes(ut8 *a, ut8 *b) {
 if (a != b) {
  ut8 temp = *a;
  *a = *b;
  *b = temp;
 }
}
