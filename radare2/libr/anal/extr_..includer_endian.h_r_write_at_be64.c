
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;


 int r_write_be64 (int *,int ) ;

__attribute__((used)) static inline void r_write_at_be64(void *dest, ut64 val, size_t offset) {
 ut8 *d = (ut8*)dest + offset;
 r_write_be64 (d, val);
}
