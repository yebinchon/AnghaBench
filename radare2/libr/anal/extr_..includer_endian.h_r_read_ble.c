
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;


 int UT64_MAX ;
 int r_read_ble16 (void const*,int) ;
 int r_read_ble32 (void const*,int) ;
 int r_read_ble64 (void const*,int) ;

__attribute__((used)) static inline ut64 r_read_ble(const void *src, bool big_endian, int size) {
 switch (size) {
 case 8:
  return (ut64) ((const ut8*)src)[0];
 case 16:
  return r_read_ble16 (src, big_endian);
 case 32:
  return r_read_ble32 (src, big_endian);
 case 64:
  return r_read_ble64 (src, big_endian);
 default:
  return UT64_MAX;
 }
}
