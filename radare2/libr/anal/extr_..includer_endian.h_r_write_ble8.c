
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static inline void r_write_ble8(void *dest, ut8 val) {
 *(ut8 *)dest = val;
}
