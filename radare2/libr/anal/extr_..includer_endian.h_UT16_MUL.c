
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;


 int UT16_MAX ;

__attribute__((used)) static inline int UT16_MUL(ut16 *r, ut16 a, ut16 b) {
 if (a && UT16_MAX / a < b) {
  return 0;
 }
 if (r) {
  *r = a * b;
 }
 return 1;
}
