
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int r_read_be64 (void const*) ;
 int r_read_le64 (void const*) ;

__attribute__((used)) static inline ut64 r_read_ble64(const void *src, bool big_endian) {
 return big_endian? r_read_be64 (src): r_read_le64 (src);
}
