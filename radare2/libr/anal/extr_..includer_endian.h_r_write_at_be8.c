
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int r_write_at_ble8 (void*,int ,size_t) ;

__attribute__((used)) static inline void r_write_at_be8(void *dest, ut8 val, size_t offset) {
 r_write_at_ble8 (dest, val, offset);
}
