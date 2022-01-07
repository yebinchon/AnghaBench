
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int r_write_be64 (void*,int ) ;
 int r_write_le64 (void*,int ) ;

__attribute__((used)) static inline void r_write_ble64(void *dest, ut64 val, bool big_endian) {
 big_endian? r_write_be64 (dest, val): r_write_le64 (dest, val);
}
