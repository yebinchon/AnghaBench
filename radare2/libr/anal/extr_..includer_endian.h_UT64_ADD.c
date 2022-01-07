
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;


 scalar_t__ UT64_MAX ;

__attribute__((used)) static inline int UT64_ADD(ut64 *r, ut64 a, ut64 b) {
 if (UT64_MAX - a < b) {
  return 0;
 }
 if (r) {
  *r = a + b;
 }
 return 1;
}
