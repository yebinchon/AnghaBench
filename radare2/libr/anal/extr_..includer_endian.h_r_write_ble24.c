
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int r_write_be24 (void*,int ) ;
 int r_write_le24 (void*,int ) ;

__attribute__((used)) static inline void r_write_ble24(void *dest, ut32 val, bool big_endian) {
 big_endian? r_write_be24 (dest, val): r_write_le24 (dest, val);
}
