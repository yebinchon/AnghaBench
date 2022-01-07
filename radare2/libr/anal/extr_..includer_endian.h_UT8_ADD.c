
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;


 scalar_t__ UT8_MAX ;

__attribute__((used)) static inline int UT8_ADD(ut8 *r, ut8 a, ut8 b) {
 if (UT8_MAX - a < b) {
  return 0;
 }
 if (r) {
  *r = a + b;
 }
 return 1;
}
