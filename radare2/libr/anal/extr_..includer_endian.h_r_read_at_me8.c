
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int r_read_at_ble8 (void const*,size_t) ;

__attribute__((used)) static inline ut8 r_read_at_me8(const void *src, size_t offset) {
 return r_read_at_ble8 (src, offset);
}
