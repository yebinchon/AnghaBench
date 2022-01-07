
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int UT8_MAX ;

__attribute__((used)) static inline int UT8_MUL(ut8 *r, ut8 a, ut8 b) {
 if (a && UT8_MAX / a < b) {
  return 0;
 }
 if (r) {
  *r = a * b;
 }
 return 1;
}
