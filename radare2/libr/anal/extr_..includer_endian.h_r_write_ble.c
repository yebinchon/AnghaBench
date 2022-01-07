
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int ut16 ;


 int r_write_ble16 (void*,int ,int) ;
 int r_write_ble24 (void*,int ,int) ;
 int r_write_ble32 (void*,int ,int) ;
 int r_write_ble64 (void*,int ,int) ;

__attribute__((used)) static inline void r_write_ble(void *dst, ut64 val, bool big_endian, int size) {
 switch (size) {
 case 8:
  ((ut8*)dst)[0] = (ut8) val;
  break;
 case 16:
  r_write_ble16 (dst, (ut16) val, big_endian);
  break;
 case 24:
  r_write_ble24 (dst, (ut32) val, big_endian);
  break;
 case 32:
  r_write_ble32 (dst, (ut32) val, big_endian);
  break;
 case 64:
  r_write_ble64 (dst, val, big_endian);
  break;
 default:
  break;
 }
}
