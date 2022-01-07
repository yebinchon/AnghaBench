
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vec4 {float z; float y; float x; float w; } ;



__attribute__((used)) static inline void vec4_from_bgra(struct vec4 *dst, uint32_t bgra)
{
 dst->z = (float)((double)(bgra & 0xFF) * (1.0 / 255.0));
 bgra >>= 8;
 dst->y = (float)((double)(bgra & 0xFF) * (1.0 / 255.0));
 bgra >>= 8;
 dst->x = (float)((double)(bgra & 0xFF) * (1.0 / 255.0));
 bgra >>= 8;
 dst->w = (float)((double)(bgra & 0xFF) * (1.0 / 255.0));
}
