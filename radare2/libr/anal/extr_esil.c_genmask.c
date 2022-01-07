
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int UT64_MAX ;

__attribute__((used)) static inline ut64 genmask(int bits) {
 ut64 m = UT64_MAX;
 if (bits > 0 && bits < 64) {
  m = (ut64)(((ut64)(2) << bits) - 1);
  if (!m) {
   m = UT64_MAX;
  }
 }
 return m;
}
