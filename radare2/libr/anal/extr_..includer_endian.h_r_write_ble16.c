
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;


 int r_write_be16 (void*,int ) ;
 int r_write_le16 (void*,int ) ;

__attribute__((used)) static inline void r_write_ble16(void *dest, ut16 val, bool big_endian) {
 big_endian? r_write_be16 (dest, val): r_write_le16 (dest, val);
}
