
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_texture {int dummy; } ;
struct wined3d_texture {struct gl_texture texture_rgb; struct gl_texture texture_srgb; } ;
typedef scalar_t__ BOOL ;



__attribute__((used)) static inline struct gl_texture *wined3d_texture_get_gl_texture(struct wined3d_texture *texture,
        BOOL srgb)
{
    return srgb ? &texture->texture_srgb : &texture->texture_rgb;
}
