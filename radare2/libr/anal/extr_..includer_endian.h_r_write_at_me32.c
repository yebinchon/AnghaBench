
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int r_write_me32 (int *,int ) ;

__attribute__((used)) static inline void r_write_at_me32(void *dest, ut32 val, size_t offset) {
 ut8 *d = ((ut8*)dest) + offset;
 r_write_me32 (d, val);
}
