
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const ut8 ;


 int const UT8_MAX ;

__attribute__((used)) static inline ut8 r_read_ble8(const void *src) {
 if (!src) {
  return UT8_MAX;
 }
 return *(const ut8 *)src;
}
