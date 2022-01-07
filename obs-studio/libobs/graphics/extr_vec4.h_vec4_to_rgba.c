
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vec4 {scalar_t__ w; scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;



__attribute__((used)) static inline uint32_t vec4_to_rgba(const struct vec4 *src)
{
 uint32_t val;
 val = (uint32_t)((double)src->x * 255.0);
 val |= (uint32_t)((double)src->y * 255.0) << 8;
 val |= (uint32_t)((double)src->z * 255.0) << 16;
 val |= (uint32_t)((double)src->w * 255.0) << 24;
 return val;
}
