
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture {unsigned int pow2_width; } ;


 unsigned int max (int,unsigned int) ;

__attribute__((used)) static inline unsigned int wined3d_texture_get_level_pow2_width(const struct wined3d_texture *texture,
        unsigned int level)
{
    return max(1, texture->pow2_width >> level);
}
