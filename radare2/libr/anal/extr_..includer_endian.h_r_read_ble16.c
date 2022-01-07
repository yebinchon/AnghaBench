
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;


 int r_read_be16 (void const*) ;
 int r_read_le16 (void const*) ;

__attribute__((used)) static inline ut16 r_read_ble16(const void *src, bool big_endian) {
 return big_endian? r_read_be16 (src): r_read_le16 (src);
}
