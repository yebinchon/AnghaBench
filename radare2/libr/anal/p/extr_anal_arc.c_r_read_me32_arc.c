
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int ut32 ;



__attribute__((used)) static inline ut32 r_read_me32_arc(const void *src) {
 const ut8 *s = src;
 return (((ut32)s[1]) << 24) | (((ut32)s[0]) << 16) | (((ut32)s[3]) << 8) | (((ut32)s[2]) << 0);
}
