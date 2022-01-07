
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
get_u32(const void *buf)
{
 const uint8_t *p = buf;

 return ((uint32_t) p[3] + ((uint32_t) p[2] << 8) +
        ((uint32_t) p[1] << 16) + ((uint32_t) p[0] << 24));
}
