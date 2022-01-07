
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int r_read_ble8 (void const*) ;

__attribute__((used)) static inline ut8 r_read_be8(const void *src) {
 return r_read_ble8 (src);
}
