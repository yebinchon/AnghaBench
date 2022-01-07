
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int r_read_be16 (int const*) ;

__attribute__((used)) static inline ut16 r_read_at_be16(const void *src, size_t offset) {
 const ut8 *s = (const ut8*)src + offset;
 return r_read_be16 (s);
}
