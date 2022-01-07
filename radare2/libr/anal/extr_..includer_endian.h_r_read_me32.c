
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int ut32 ;


 int UT32_MAX ;

__attribute__((used)) static inline ut32 r_read_me32(const void *src) {
 if (!src) {
  return UT32_MAX;
 }
 const ut8 *s = (const ut8*)src;
 return (((ut32)s[2]) << 24) | (((ut32)s[1]) << 16) |
  (((ut32)s[0]) << 8) | (((ut32)s[1]) << 0);
}
