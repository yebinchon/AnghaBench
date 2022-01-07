
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int UT64_MAX ;

__attribute__((used)) static inline int UT64_MUL(ut64 *r, ut64 a, ut64 b) {
 if (a && UT64_MAX / a < b) {
  return 0;
 }
 if (r) {
  *r = a * b;
 }
 return 1;
}
