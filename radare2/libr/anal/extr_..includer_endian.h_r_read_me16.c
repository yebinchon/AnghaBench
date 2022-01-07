
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int ut16 ;


 int UT16_MAX ;

__attribute__((used)) static inline ut16 r_read_me16(const void *src) {
 if (!src) {
  return UT16_MAX;
 }
 const ut8 *s = (const ut8*)src;
 return (((ut16)s[0]) << 8) | (((ut16)s[1]) << 0);
}
