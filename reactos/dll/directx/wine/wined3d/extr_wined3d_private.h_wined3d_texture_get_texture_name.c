
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;
struct wined3d_texture {TYPE_2__ texture_rgb; TYPE_1__ texture_srgb; } ;
struct wined3d_context {int dummy; } ;
typedef int GLuint ;
typedef scalar_t__ BOOL ;


 scalar_t__ needs_separate_srgb_gl_texture (struct wined3d_context const*,struct wined3d_texture const*) ;

__attribute__((used)) static inline GLuint wined3d_texture_get_texture_name(const struct wined3d_texture *texture,
        const struct wined3d_context *context, BOOL srgb)
{
    return srgb && needs_separate_srgb_gl_texture(context, texture)
            ? texture->texture_srgb.name : texture->texture_rgb.name;
}
