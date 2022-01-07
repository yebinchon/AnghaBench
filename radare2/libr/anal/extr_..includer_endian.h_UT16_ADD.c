
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut16 ;


 scalar_t__ UT16_MAX ;

__attribute__((used)) static inline int UT16_ADD(ut16 *r, ut16 a, ut16 b) {
 if (UT16_MAX - a < b) {
  return 0;
 }
 if (r) {
  *r = a + b;
 }
 return 1;
}
