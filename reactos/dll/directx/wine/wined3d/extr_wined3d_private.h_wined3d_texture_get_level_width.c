
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; } ;
struct wined3d_texture {TYPE_1__ resource; } ;


 unsigned int max (int,unsigned int) ;

__attribute__((used)) static inline unsigned int wined3d_texture_get_level_width(const struct wined3d_texture *texture,
        unsigned int level)
{
    return max(1, texture->resource.width >> level);
}
