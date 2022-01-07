
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int UT32_MAX ;
 int r_read_me32 (int const*) ;

__attribute__((used)) static inline ut32 r_read_at_me32(const void *src, size_t offset) {
 if (!src) {
  return UT32_MAX;
 }
 const ut8 *s = (const ut8*)src + offset;
 return r_read_me32 (s);
}
