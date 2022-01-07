
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;


 scalar_t__ UT32_MAX ;

__attribute__((used)) static inline int UT32_ADD(ut32 *r, ut32 a, ut32 b) {
 if (UT32_MAX - a < b) {
  return 0;
 }
 if (r) {
  *r = a + b;
 }
 return 1;
}
